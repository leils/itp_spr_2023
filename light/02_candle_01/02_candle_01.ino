/*
   NeoPixel HSV control with Adafruit NeoPixel Library

  This sketch shows how to convert a hue, saturation, and value range
  to a single color value for controlling RGBW neopixels. Doesn't work on
  RGB addressable LEDs.

  Uses Adafruit's NeoPixel library: https://github.com/adafruit/Adafruit_NeoPixel

  created 7 Jun 2021
  modified 31 Jan 2023
  by Tom Igoe

*/
#include <Adafruit_NeoPixel.h>
#include <EncoderStepCounter.h>

/* ---------- ENCODER SETUP ------------*/
const int rotClkPin = 2;
const int rotDtPin = 3;
const int rotBtnPin = 6;

EncoderStepCounter encoder(rotClkPin, rotDtPin);

int lastButtonState = LOW;
int debounceDelay = 5;

int mode = 0;

/* ---------- LED SETUP ----------------*/
const int neoPixelPin = 5;  // control pin
const int pixelCount = 7;    // number of pixels

const long baseColor[] = {4850, 225, 195};

unsigned long hue = baseColor[0];
unsigned long color = 0;
int sat = baseColor[1];
int val = baseColor[2];
int hChange = 100;
int svChange = 10;

int valChange = 3;
const int minVal = 55;
const int maxVal = 235;
const float directionChangeChance = .05;

// set up strip:
Adafruit_NeoPixel strip = Adafruit_NeoPixel(pixelCount, neoPixelPin, NEO_GRBW + NEO_KHZ800);


void setup() {
  // --------------------- Serial Setup
  Serial.begin(9600);
  Serial.setTimeout(10);
  
  // --------------------- Serial Setup
  strip.begin();    // initialize pixel strip
  strip.clear();    // turn all LEDs off
  strip.show();     // Initialize all pixels

  // --------------------- Encoder Setup
  attachInterrupt(digitalPinToInterrupt(rotClkPin), interrupt, CHANGE);
  attachInterrupt(digitalPinToInterrupt(rotDtPin), interrupt, CHANGE);
  // set the button pin as an input_pullup:
  pinMode(rotBtnPin, INPUT_PULLUP); 
}

void loop() {
  // hue fades throug h the color spectrum, starting from red.
  //printHSV();
  handleEncoderRotation();
  handleEncoderButton();
  fadeValue();

  // loop over all the pixels:
  for (int pixel = 0; pixel < pixelCount; pixel++) {
    color = strip.ColorHSV(hue, sat, val);
    strip.setPixelColor(pixel, color);// set the color for this pixel
  }
  strip.show();                       // refresh the strip
  
  printHSV();
  delay(5);
}

void printHSV() {
  Serial.print(hue);
  Serial.print(",");
  Serial.print(sat);
  Serial.print(",");
  Serial.print(val);
  Serial.print("\t");
  Serial.println(color, HEX);
}

/* ---------- ENCODER HANDLING ----------------*/

// Call tick on every change interrupt
void interrupt() {
  encoder.tick();
}

void handleEncoderButton() {
  int buttonState = digitalRead(rotBtnPin);
  if (buttonState != lastButtonState) {
    delay(debounceDelay);

    if (buttonState == LOW) {
      mode += 1;
      mode = mode % 3;
      Serial.print("modeChange: ");
      Serial.println(mode);

    }
  }

  lastButtonState = buttonState;
}

void handleEncoderRotation() {
  int position = encoder.getPosition();
  // this logic is hard to follow ... should redo
  if (position != 0) {
    if (mode == 0) {
      hue += (hChange * position);
    } else if (mode == 1) {
      sat += (svChange * position);
    } else if (mode == 2) {
      val += (svChange * position);
    }
    encoder.reset();
  }
}

/* ---------- ANIMATION HANDLING ----------------*/
bool randomlyChangeDirection() {
  return (random(0, 99) / 100) < directionChangeChance;
}

void fadeValue() {
  if (val < minVal || val > maxVal) {
    //Serial.print("changeDirection");
    valChange = -valChange;
  }

  val += valChange;
}
