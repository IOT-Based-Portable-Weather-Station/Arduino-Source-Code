#include <Wire.h>
#include <LiquidCrystal_I2C.h>

// Initialize the LCD with the I2C address and LCD size
LiquidCrystal_I2C lcd(0x27, 16, 2);

// Define Rain Sensor pins
#define RAIN_DIGITAL_PIN 8
#define RAIN_ANALOG_PIN A1

void setup() {
  lcd.init();                      // Initialize the LCD
  lcd.backlight();                 // Turn on the backlight
  pinMode(RAIN_DIGITAL_PIN, INPUT); // Set rain sensor digital pin as input
  Serial.begin(9600);              // Initialize serial communication for debugging
  Serial3.begin(115200);           // Initialize Serial3 for communication with ESP32
}

void loop() {
  delay(2000); // Wait a few seconds between measurements

  // Read rain sensor values
  int rainDigital = digitalRead(RAIN_DIGITAL_PIN);
  int rainAnalog = analogRead(RAIN_ANALOG_PIN);

  // Clear the LCD before displaying rain status
  lcd.clear();

  // Display rain status
  lcd.setCursor(0, 0);
  if (rainDigital == LOW) {
    lcd.print("Rain Detected");
  } else {
    lcd.print("No Rain");
  }

  lcd.setCursor(0, 1);
  lcd.print("Rain Level: ");
  lcd.print(rainAnalog);

  delay(2000); // Display rain status for 2 seconds
}