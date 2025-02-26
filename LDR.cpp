#include <Wire.h>
#include <LiquidCrystal_I2C.h>

// Initialize the LCD with the I2C address and LCD size
LiquidCrystal_I2C lcd(0x27, 16, 2);

// Define LDR pin
#define LDR_PIN A2

void setup() {
  lcd.init();                      // Initialize the LCD
  lcd.backlight();                 // Turn on the backlight
  Serial.begin(9600);              // Initialize serial communication for debugging
  Serial3.begin(115200);           // Initialize Serial3 for communication with ESP32
}

void loop() {
  delay(2000); // Wait a few seconds between measurements

  // Read LDR value
  int ldrValue = analogRead(LDR_PIN);
  float V_out = ldrValue * (5.0 / 1023.0); // Convert analog value to voltage
  float R_fixed = 10000.0; // 10kΩ resistor
  float R_LDR = (5.0 - V_out) * R_fixed / V_out; // Calculate LDR resistance
  float illuminance = pow((R_LDR / 1000.0), -1.25); // Estimate illuminance (lux)

  // Clear the LCD before displaying light intensity
  lcd.clear();

  // Display light intensity
  lcd.setCursor(0, 0);
  lcd.print("Light Intensity:");
  lcd.setCursor(0, 1);
  lcd.print(illuminance);
  lcd.print(" lux");

  delay(2000); // Display light intensity for 2 seconds
}