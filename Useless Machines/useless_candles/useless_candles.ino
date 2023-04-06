// TODO check the sensor-to-solenoid pins ... I don't think they're associated right now
const char sensorPins[] = {
  A0, A1, A2, A3, A6
};

int sensorStatus[] = {
  1,1,1,1,1
};

unsigned long lastLowDetectedAt[] = {
  0, 0, 0, 0, 0
};

//Solenoid pins are ordered by when they are set off
//Ie. outside to inside on the housing
// TODO: update to match the sensors
const int solenoidPins[] = {
  2, 7, 4, 6, 5
};

const int pinCount = 5;
const int threshold = 100;
const int popcornDelay = 500;
int lastCount = 0;
int timeCovered = 0;
bool awaitingPopcorn = false;

void setup() {
  for (int thisPin = 0; thisPin < pinCount; thisPin++) {
    pinMode(sensorPins[thisPin], INPUT);
    pinMode(solenoidPins[thisPin], OUTPUT);
  }

  Serial.begin(9600);
}

int countCandles() {
  int count = 0;
  for (int i = 0; i < pinCount; i++) {
    if (sensorStatus[i] == LOW) {
      count++;
    }
  }
  return count;
}

void popcorn() {
  for (int i = 0; i < pinCount; i++) {
    pop(i);
  }
}

void pop(int index) {
  digitalWrite(solenoidPins[index], HIGH);
  delay(50);
  digitalWrite(solenoidPins[index], LOW);
  delay(500);
}

void loop() {
  unsigned long currentTime = millis();
  // Run through the pins and send pin index to serial if change is seen
  for (int pinIndex = 0; pinIndex < pinCount; pinIndex++) {
    int pinReading = analogRead(sensorPins[pinIndex]);
    int lastStatus = sensorStatus[pinIndex];
    // I could probably mix these two if statements, but it's harder to read that way
    if ((pinReading < threshold) && (lastStatus == HIGH)) { //cross threshold down, YES candle detected
      Serial.write(pinIndex);
      sensorStatus[pinIndex] = !sensorStatus[pinIndex];
      lastLowDetectedAt[pinIndex] = currentTime;
    } else if ((pinReading > threshold) && (lastStatus == LOW)) { //cross threshold up, NO candle detected 
      Serial.write(pinIndex);
      sensorStatus[pinIndex] = !sensorStatus[pinIndex];
    }
  }

  // TODO: if time has passed for the particular pin, SET THE SOLENIOD OFF and turn off. 
  for (int pinIndex = 0; pinIndex < pinCount; pinIndex++) {
    int status = sensorStatus[pinIndex];
    unsigned long lowTimeStamp = lastLowDetectedAt[pinIndex];

    if ((status == LOW) && (currentTime > (lowTimeStamp + popcornDelay))) {
      pop(pinIndex);
    }
  }
  // Handling solenoid timings
  // Count the number of sensors covered
  // int currentCount = countCandles();


  // If we just got to 5 candles
  // if (currentCount != lastCount) {
  //   if (currentCount >= pinCount) {
  //     timeCovered = millis();
  //     awaitingPopcorn = true;
  //   } else {
  //     awaitingPopcorn = false;
  //   }
  // }

  // if (awaitingPopcorn && (millis() >= timeCovered + popcornDelay)) {
  //   popcorn();
  //   awaitingPopcorn = false;
  // }

  // lastCount = currentCount;
}
