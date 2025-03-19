#include <Wire.h>
#include <LiquidCrystal_I2C.h>

// Initialize the library with the I2C address and LCD size
LiquidCrystal_I2C lcd(0x27, 16, 2);

void setup() {
  lcd.init();                      // Initialize the LCD
  lcd.backlight();                 // Turn on the backlight
  lcd.setCursor(0, 0);             // Set cursor to column 0, row 0
  lcd.print("Hello, World!");      // Print text
}

void loop() {
  // No need to repeat anything
}