#include <EncoderStepCounter.h>
#include "secrets.h"
#include <WiFiNINA.h>  //for Nano IOT 33
#include <WiFiUdp.h>

/*------------ Wifi Setup -----------*/

// Define these in secrets.h
char ssid[] = SECRET_SSID;
char pass[] = SECRET_PASS;

WiFiUDP Udp;
const unsigned int localPort = 8080;  // local port to listen for UDP packets (here's where we send the packets)

/*------------ Encoder Setup -----------*/
int debounceDelay = 5;

/*------ Encoder A -------*/
const int encoderA_pin1 = 2;
const int encoderA_pin2 = 3;
const int encoderA_buttonPin = 14;

int encoderA_oldPosition = 0;
int encoderA_lastButtonState = LOW;
EncoderStepCounter encoderA(encoderA_pin1, encoderA_pin2);

/*------ Encoder B -------*/
const int encoderB_pin1 = 10;
const int encoderB_pin2 = 11;
const int encoderB_buttonPin = 15;

int encoderB_oldPosition = 0;
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

  Serial.println("Starting UDP");
  Udp.begin(localPort);
  Serial.print("Local port: ");

  Serial.println(localPort);
}

/*------------ Main Loop -----------*/
void loop() {
    handleEncoderA();
    handleEncoderB();
}

/*------------ Handlers -----------*/
void handleEncoderA() {
    int position = encoderA.getPosition();
    int buttonState = digitalRead(encoderA_buttonPin);
    if (buttonState != encoderA_lastButtonState) {
        delay(debounceDelay);
        if (buttonState == LOW) {
            Serial.print("pressed A at ");
            Serial.println(position);
        }
    }

    encoderA_lastButtonState = buttonState;

    if (position % 24 == 0) {
        encoderA.reset();
        position = encoderA.getPosition();
    }

    if (position != encoderA_oldPosition) {
        Serial.print("A: ");
        Serial.println(position);
        encoderA_oldPosition = position;
    }
}

void handleEncoderB() {
    int position = encoderB.getPosition();
    int buttonState = digitalRead(encoderB_buttonPin);
    if (buttonState != encoderB_lastButtonState) {
        delay(debounceDelay);
        if (buttonState == LOW) {
            Serial.print("pressed B at ");
            Serial.println(position);
        }
    }

    encoderB_lastButtonState = buttonState;

    if (position % 24 == 0) {
        encoderB.reset();
        position = encoderB.getPosition();
    }

    if (position != encoderB_oldPosition) {
        Serial.print("B: ");
        Serial.println(position);
        encoderB_oldPosition = position;
    }
}

void interruptA() {
    encoderA.tick();
}

void interruptB() {
    encoderB.tick();
}
