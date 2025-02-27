#include <Wire.h>
#include <LiquidCrystal_I2C.h>
#include "DHT.h"

// Initialize the LCD with the I2C address and LCD size
LiquidCrystal_I2C lcd(0x27, 16, 2);

// Define DHT sensor type and pin
#define DHTTYPE DHT22
#define DHTPIN 7

DHT dht(DHTPIN, DHTTYPE);

void setup() {
  lcd.init();                      // Initialize the LCD
  lcd.backlight();                 // Turn on the backlight
  dht.begin();                     // Initialize the DHT sensor
}

void loop() {
  delay(2000); // Wait a few seconds between measurements

  float humidity = dht.readHumidity();
  float temperature = dht.readTemperature(); // Celsius

  // Check if any reads failed and exit early (to try again).
  if (isnan(humidity) || isnan(temperature)) {
    lcd.setCursor(0, 0);
    lcd.print("Sensor error");
    return;
  }

  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Temp: ");
  lcd.print(temperature);
  lcd.print((char)223); // Degree symbol
  lcd.print("C");

  lcd.setCursor(0, 1);
  lcd.print("Humidity: ");
  lcd.print(humidity);
  lcd.print("%");
}