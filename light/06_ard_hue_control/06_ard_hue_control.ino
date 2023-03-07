#include <EncoderStepCounter.h>


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
}

/*------------ Main Loop -----------*/
void loop() {
    handleEncoderA();
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

void interruptA() {
    encoderA.tick();
}

void interruptB() {
    encoderB.tick();
}