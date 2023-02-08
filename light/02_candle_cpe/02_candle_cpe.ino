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

/* ---------- NEOPIXEL SETUP ----------------*/
const int neoPixelPin = 1;  // control pin
const int pixelCount = 7;    // number of pixels

// HSV value to start with (as close to neutral "flame" as i can get)
const long baseColor[] = {3950, 245, 77};

unsigned long hue = baseColor[0];
unsigned long color = 0;
int sat = baseColor[1];
int val = baseColor[2];

//Used for rotary encoder control
int hChange = 100;
int svChange = 10;

int valChange = 1; // Value step amount. Default to 1 for slow flickering flame. 
int valDirection = 1;
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

}

void loop() {
  fadeValue();

  // loop over all the pixels:
  for (int pixel = 0; pixel < pixelCount; pixel++) {
    color = strip.ColorHSV(hue, sat, val);
    strip.setPixelColor(pixel, color);// set the color for this pixel
  }
  strip.show();                       // refresh the strip
  
  // printHSV();
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

/* ---------- ANIMATION HANDLING ----------------*/
bool randomlyChangeDirection() {
  float roll = random(99) / 100.00;
  return (roll < directionChangeChance);
}

void fadeValue() {
  randomlyChangeDirection();
  if (val < minVal || val > maxVal || randomlyChangeDirection()) {
    //Serial.print("changeDirection");
    valDirection = -valDirection;
  }

  val += (valChange * valDirection);
}
