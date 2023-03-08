#include <EncoderStepCounter.h>
#include "secrets.h"
#include <WiFiNINA.h>  //for Nano IOT 33
#include <WiFiUdp.h>
#include <ArduinoHttpClient.h>

/*** TODOS
 * [x] Check WIFI standards for sending HTTP requests 
 * [ ] Map encoder positions to a color/value for Hue input 
 * [x] Create a "send" function that only sends requests after certain delay 
 * [ ] Would be cool to use haptic feedback to tell you when you've hit the top/bottom. 
 * [ ] Choose whether to do a debounced hold-down-rotary-encoder control system
*/

/*------------ Wifi Setup -----------*/

// Define these in secrets.h
char ssid[] = SECRET_SSID;
char pass[] = SECRET_PASS;

char serverAddress[] = "172.22.151.226";  // IP address of the HUE bridge
String hueUserName = HUE_USERNAME;
const char path[] = "/api/ZAgWUA-mrphififtLRGrBVgUvpaCIjUrDRCqMMJY/lights/25/state";
const int lightNum = 25;

WiFiClient wifi;
HttpClient client = HttpClient(wifi, serverAddress);
int status = WL_IDLE_STATUS;

/*------------ Encoder Setup -----------*/
int debounceDelay = 5;
int sendDelay = 500;

/*------ Encoder A -------*/
const int encoderA_pin1 = 2;
const int encoderA_pin2 = 3;
const int encoderA_buttonPin = 14;

int encoderA_lastSentPosition = 0;
unsigned long encoderA_lastChangeAt = 0;
int encoderA_position = 0;
int encoderA_lastButtonState = LOW;
EncoderStepCounter encoderA(encoderA_pin1, encoderA_pin2);

/*------ Encoder B -------*/
const int encoderB_pin1 = 10;
const int encoderB_pin2 = 11;
const int encoderB_buttonPin = 15;

int encoderB_lastSentPosition = 0;
unsigned long encoderB_lastChangeAt = 0;
int encoderB_position = 0;
int encoderB_lastButtonState = LOW;
EncoderStepCounter encoderB(encoderB_pin1, encoderB_pin2);



/*------------ Setup -----------*/
void setup() {
  Serial.begin(9600);
  if (!Serial) delay(3000);
  // Initialize encoder
  encoderA.begin();
  encoderB.begin();
  // Initialize interrupts
  attachInterrupt(digitalPinToInterrupt(encoderA_pin1), interruptA, CHANGE);
  attachInterrupt(digitalPinToInterrupt(encoderA_pin2), interruptA, CHANGE);
  attachInterrupt(digitalPinToInterrupt(encoderB_pin1), interruptB, CHANGE);
  attachInterrupt(digitalPinToInterrupt(encoderB_pin2), interruptB, CHANGE);
  // set the button pin as an input_pullup:
  pinMode(encoderA_buttonPin, INPUT_PULLUP);
  pinMode(encoderB_buttonPin, INPUT_PULLUP);

  //---- Connect to WiFi Network ----//

  pinMode(LED_BUILTIN, OUTPUT); // Set Built-in LED to show wifi connected

  Serial.println();
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.begin(ssid, pass);

  while (WiFi.status() != WL_CONNECTED) { // Wait until connected to the WiFi
    delay(300);
    Serial.print(".");
  }
  Serial.println("");

  // Print network connection to serial
  digitalWrite(LED_BUILTIN, HIGH);
  Serial.println("WiFi connected");
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());
}

/*------------ Main Loop -----------*/
void loop() {
    handleButtonA();
    handleButtonB();
    handleEncoderA();
    handleEncoderB();
}

/*------------ Handlers -----------*/
void handleButtonA() {
    int buttonState = digitalRead(encoderA_buttonPin);
    if (buttonState != encoderA_lastButtonState) {
        delay(debounceDelay);
        if (buttonState == LOW) {
            // sendHttpOn();
            sendRequest(lightNum, "on", "true");
        }
    }
    encoderA_lastButtonState = buttonState;
}

void handleButtonB() {
    int buttonState = digitalRead(encoderB_buttonPin);
    if (buttonState != encoderB_lastButtonState) {
        delay(debounceDelay);
        if (buttonState == LOW) {
            // sendHttpOff();
            sendRequest(lightNum, "on", "false");
        }
    }
    encoderB_lastButtonState = buttonState;
}

void handleEncoderA() {
    int position = encoderA.getPosition();
    unsigned long now = millis();
    encoderA.reset();

    if (position != 0) {
        encoderA_position += position; // Update global A position
        Serial.print("A: ");
        Serial.println(encoderA_position);
        encoderA_lastChangeAt = now; // Log last change time
    } else if ((now > (encoderA_lastChangeAt + sendDelay)) && (encoderA_position != encoderA_lastSentPosition)) { // Send only if change stable for .5 seconds
        Serial.print("SENDING A: ");
        Serial.println(encoderA_position);
        encoderA_lastSentPosition = encoderA_position;  //  Log last send value
    }
}

void handleEncoderB() {
    int position = encoderB.getPosition();
    unsigned long now = millis();
    encoderB.reset();

    if (position != 0) {
        encoderB_position += position;
        Serial.print("B: ");
        encoderB_lastChangeAt = now; // Log last change time
        Serial.println(encoderB_position);
    } else if ((now > (encoderB_lastChangeAt + sendDelay)) && (encoderB_position != encoderB_lastSentPosition)) { // Send only if change stable for .5 seconds
        Serial.print("SENDING B: ");
        Serial.println(encoderB_position);
        encoderB_lastSentPosition = encoderB_position;  //  Log last send value
    }
}

void interruptA() {
    encoderA.tick();
}

void interruptB() {
    encoderB.tick();
}

void sendHttpOn() {
    Serial.println("Sending on");
    String contentType = "application/json";
    String putData = "{\"on\":true}";
    client.put(path, contentType, putData);

    // read the status code and body of the response
    int statusCode = client.responseStatusCode();
    Serial.print( "Status code: " );
    Serial.println( statusCode );
    String response = client.responseBody();
    Serial.print( "Response: " );
    Serial.println( response );
}

void sendHttpOff() {
    Serial.println("Sending off");
    String contentType = "application/json";
    String putData = "{\"on\":false}";
    client.put(path, contentType, putData);

    // read the status code and body of the response
    int statusCode = client.responseStatusCode();
    Serial.print( "Status code: " );
    Serial.println( statusCode );
    String response = client.responseBody();
    Serial.print( "Response: " );
    Serial.println( response );
}

void sendRequest(int light, String cmd, String value) {
  // make a String for the HTTP request path:
  String request = "/api/" + hueUserName;
  request += "/lights/";
  request += light;
  request += "/state/";

  String contentType = "application/json";

  // make a string for the JSON command:
  String hueCmd = "{\"" + cmd;
  hueCmd += "\":";
  hueCmd += value;
  hueCmd += "}";
  // see what you assembled to send:
  Serial.print("PUT request to server: ");
  Serial.println(request);
  Serial.print("JSON command to server: ");
  Serial.println(hueCmd);

  // make the PUT request to the hub:
  client.put(request, contentType, hueCmd);
  
  // read the status code and body of the response
  int statusCode = client.responseStatusCode();
  String response = client.responseBody();

  Serial.println(hueCmd);
  Serial.print("Status code from server: ");
  Serial.println(statusCode);
  Serial.print("Server response: ");
  Serial.println(response);
  Serial.println();
}
