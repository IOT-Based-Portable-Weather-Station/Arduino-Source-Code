# Batch20_Group32
IoT-Based Weather Station

# IoT-Based Weather Station

## Project Description

This project implements a portable weather station using an Arduino Mega 2560, an ESP32 DevKit, a DHT22 temperature and humidity sensor, a rain sensor (both analog and digital outputs), and an LDR (Light Dependent Resistor) for illuminance measurement.  The Arduino collects sensor data, displays it on a 16x2 I2C LCD, and transmits it serially to the ESP32.  The ESP32 then connects to a Firebase Realtime Database and uploads the sensor readings. A Flutter-based mobile application retrieves this data from Firebase and displays it in a user-friendly UI. The app features a splash screen, a main weather display screen.

The system provides real-time monitoring of:

*   Temperature (°C)
*   Humidity (%)
*   Illuminance (lux)
*   Rain Status (Digital: Rain/No Rain)
*   Rain Level (Analog value)


## Components Used

## Components Used

| Component                    | Description                                                                                                                                                                                                                                    |
| ---------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Arduino Mega 2560            | The main microcontroller.  Reads sensor data, controls the LCD, and communicates with the ESP32.                                                                                                                                     |
| ESP32 DevKit V1              | Handles Wi-Fi connectivity and communication with the Firebase Realtime Database.  Receives data serially from the Arduino.                                                                                                                |
| DHT22 Sensor                 | Measures temperature and humidity.                                                                                                                                                                                                    |
| Rain Sensor Module           | Detects the presence and intensity of rain. Provides both digital (rain/no rain) and analog (intensity level) outputs.                                                                                                                         |
| LDR (Light Dependent Resistor) | Measures light intensity (illuminance).  Its resistance changes depending on the amount of light falling on it.                                                                                                                                 |
| 10kΩ Resistor                 | Used in a voltage divider circuit with the LDR to convert the LDR's resistance change into a measurable voltage.                                                                                                                             |
| 16x2 I2C LCD                | Displays sensor readings locally on the Arduino side.  The I2C interface simplifies wiring compared to a standard parallel LCD.                                                                                                            |
| Jumper Wires                | Used for connecting the components.                                                                                                                                                                                                   |
| Breadboard                   | Provides a convenient way to connect components without soldering, making prototyping and circuit modifications easier.                                                                                                                 |
| Power Supply                 | A 6V - 12V power supply is used to power the IOT device.

## Features

*   **Real-time Weather Monitoring:**  Provides up-to-the-second readings of temperature, humidity, illuminance, and rain status.
*   **Remote Data Access:**  Weather data is accessible from anywhere with an internet connection via the Flutter mobile app.
*   **Firebase Integration:**  Utilizes Firebase Realtime Database for reliable and scalable data storage and retrieval.
*   **User-Friendly Interface:** The Flutter app provides a clean and intuitive interface for viewing weather data.
*   **Glassmorphic Design:** The app uses a modern glassmorphic UI design with blurred backgrounds and translucent elements.
*   **Local Display:**  The 16x2 LCD provides a local display of sensor readings, even without internet connectivity.
*   **Error Handling:** The Flutter app gracefully handles cases where data is unavailable or invalid, displaying fallback values.
*   **Cross-Platform Compatibility:**  The Flutter app can be built for both Android and iOS platforms.

### Software

*   **Arduino IDE:**  For programming the Arduino Mega 2560.
*   **Arduino Libraries:**
    *   `Wire.h`:  For I2C communication (with the LCD).
    *   `LiquidCrystal_I2C.h`:  For controlling the I2C LCD.
    *   `DHT.h`:  For reading data from the DHT22 sensor.
*   **ESP32 Board Support Package:** Installed in the Arduino IDE to enable programming the ESP32.
*   **ESP32 Libraries:**
    *  `WiFi.h`: For Wi-Fi connectivity.
    *  `FirebaseESP32.h`: For interacting with the Firebase Realtime Database.
*   **Flutter:**  For building the cross-platform mobile application.
*   **Flutter Packages:**
    *   `firebase_core`:  For initializing Firebase.
    *   `firebase_database`:  For accessing the Firebase Realtime Database.
    *   `firebase_options.dart`: Contains Firebase configuration.

## Circuit Diagram

![Circuit Diagram](<circuit_image (1).png>)

## Block Diagram
![Block Diagram](<Block Diagram.png>)

## Contributors

| Index Number | Name              |
| ------------ | ----------------- |
| 204031F      | Dassanayaka H.D.H.S |
| 204003X      | Amarasekara M.G.V.C |
| 204002T      | Adhikari A.N.K     |
| 204026U      | Chanuki J.A.C      |
| 204100R      | Kavindi J.A.D.A     |
