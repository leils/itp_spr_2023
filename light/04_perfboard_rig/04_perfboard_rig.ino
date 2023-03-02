/* ---------- ENCODER SETUP ------------*/
#include <EncoderStepCounter.h>

const int rePin1 = 2;
const int rePin2 = 3;

// Create encoder instance:
EncoderStepCounter encoder(rePin1, rePin2);

// encoder previous position:
int oldPosition = 0;

const int buttonPin = 4;    // pushbutton pin
int lastButtonState = LOW;  // last button state
int debounceDelay = 5;      // debounce time for the button in ms

/* ---------- LED SETUP ------------*/

const int ledPin = 16;
// analogWrite resolution (can be 10 for SAMD boards, has to be 8 for Uno):
const int resolution = 10;
// number of steps = 2^resolution:
const int steps = pow(2, resolution);
// change between steps:
const int maxChange = 30;
int change = 1;
// current level:
int currentLevel = 1;
// pre-calculated PWM levels:
int levelTable[steps];

void setup() {
  // ------------ Serial Setup
  Serial.begin(9600);
  // wait for serial monitor to open:
  if (!Serial) delay(3000);

  // ------------ LED Fade Setup
  // pre-calculate the PWM levels from the formula:
  fillLevelTable();
  // set the analogWrite resolution:
  analogWriteResolution(resolution);
  // initialize digital pin 5 as an output:
  pinMode(ledPin, OUTPUT);

  // ------------ Encoder Setup
  attachInterrupt(digitalPinToInterrupt(rePin1), interrupt, CHANGE);
  attachInterrupt(digitalPinToInterrupt(rePin2), interrupt, CHANGE);
  // set the button pin as an input_pullup:
  pinMode(buttonPin, INPUT_PULLUP); 
}

void loop() {
  handleFade();
  handleEncoderButton();
  handleEncoderRotation();
}

void handleEncoderRotation() {
  int position = encoder.getPosition();
  // this logic is hard to follow ... should redo
  if (position != 0) {
    // if (change >= 0) {
    //   change += position;
    // } else {
    //   change -= position;
    // }

    // if (change > maxChange) {
    //   change = maxChange;
    // } else if (change < -maxChange) {
    //   change = -maxChange;
    // }

    currentLevel += position * 3;
    Serial.println(position);

    encoder.reset();
  }
}

void handleEncoderButton() {
  // read the pushbutton:
  int buttonState = digitalRead(buttonPin);
  //  // if the button has changed:
  if (buttonState != lastButtonState) {
    // debounce the button:
    delay(debounceDelay);
    // if button is pressed:
    if (buttonState == LOW) {
      Serial.println("changeReset");
      // change = 1;
      currentLevel = 1;
    }
  }
  // save current button state for next time through the loop:
  lastButtonState = buttonState;
}

void handleFade() {
  // decrease or increase by change points each time
  // if at the bottom or top, change the direction:
  // if (currentLevel <= 0 || currentLevel >= steps - change) {
  //   change = -change;
  // }
  // currentLevel += change;

  //PWM output the result:
  analogWrite(ledPin, levelTable[currentLevel]);
  delay(10);
}


// Call tick on every change interrupt
void interrupt() {
  encoder.tick();
} 

void fillLevelTable() {
  // iterate over the array and calculate the right value for it:
  for (int l = 0; l < steps; l++) {
    // map input to a 0-360 range:
    int angle = map(l, 0, steps, 0, 360);
    // convert to radians:
    float lightLevel = angle * PI / 180;
    // now subtract PI/2 to offset by 90 degrees, so yuu can start fade at 0:
    lightLevel -= PI / 2;
    // get the sine of that:
    lightLevel = sin(lightLevel);
    // now you have -1 to 1. Add 1 to get 0 to 2:
    lightLevel += 1;
    // multiply to get 0-255:
    lightLevel *= (steps - 1) / 2;
    // put it in the array:
    levelTable[l] = int(lightLevel);
  }
}
