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
#include <Adafruit_DotStar.h>

/* ---------- TRINKET SETUP ----------------*/
// for turning off the onboard dotstar 
Adafruit_DotStar dt_strip = Adafruit_DotStar(1, 7, 8, DOTSTAR_BGR);

/* ---------- NEOPIXEL SETUP ----------------*/
const int neoPixelPin = 1;  // control pin
const int pixelCount = 7;    // number of pixels

// HSV value to start with (as close to neutral "flame" as i can get)
const long baseColor[] = {3950, 245, 77};

enum {HUE, SAT, VAL};
// 7 pixels, with hue/sat/val 

long pixels[7][3] = {
  {3950, 245, 77},
  {3950, 245, 77},
  {3950, 245, 77},
  {3950, 245, 77},
  {3950, 245, 77},
  {3950, 245, 77},
  {3950, 245, 77},
};

// directional changes seeded by 
int pixelChange[7][3] = {
  {-1, 1, 0},
  {1, 1, 0},
  {2, 1, 0},
  {-1, 1, 0},
  {1, 1, 0},
  {1, 1, 0},
};

const unsigned long minHue = 3000;
const unsigned long maxHue = 4500;

// Reference colors ... no longer used
unsigned long hue = baseColor[0];
unsigned long color = 0;
int sat = baseColor[1];
int val = baseColor[2];

int hChange = 1;
int sChange = 1;

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
  // --------------------- Trinket Setup
  dt_strip.begin();   // initialize onboard LED
  dt_strip.clear();   // turn LED off 
  dt_strip.show();    // initialize LED 
}

void loop() {
  // hue fades throug h the color spectrum, starting from red.
  fadeValue();
  changeHue();

  Serial.println(pixels[0][0]);

  // loop over all the pixels:
  for (int pixel = 0; pixel < pixelCount; pixel++) {
    color = strip.ColorHSV(pixels[pixel][HUE],pixels[pixel][SAT],pixels[pixel][VAL]);
    strip.setPixelColor(pixel, color);// set the color for this pixel
  }
  strip.show();                       // refresh the strip

  delay(5);
}


/* ---------- ANIMATION HANDLING ----------------*/
bool randomlyChangeDirection() {
  float roll = random(99) / 100.00;
  return (roll < directionChangeChance);
}

void fadeValue() {
  randomlyChangeDirection();
  if (val < minVal || val > maxVal || randomlyChangeDirection()) {
    valDirection = -valDirection;
  }

  val += (valChange * valDirection);
  for (int pixel = 0; pixel < pixelCount; pixel++) {
    pixels[pixel][VAL] = val;
  }
}

void changeHue() {
  for (int pixel = 0; pixel < pixelCount; pixel++) {
    unsigned long h = pixels[pixel][HUE];
    if (h < minHue || h > maxHue || randomlyChangeDirection()) {
      pixelChange[pixel][HUE] = -pixelChange[pixel][HUE];
    }

    pixels[pixel][HUE] += pixelChange[pixel][HUE];
  }

}
