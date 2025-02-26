# ESP32 Weather Station with Flutter and Firebase Integration
## Screenshots

<img src="https://github.com/irehmaan/Flutter-App-for-Esp32-based-Weather-Station/assets/88653030/367f694b-9f53-4772-a056-3679d1f6f2a4" width="200" title="LogIn Screen">
<img src="https://github.com/irehmaan/Flutter-App-for-Esp32-based-Weather-Station/assets/88653030/38863cdc-892b-443d-a0de-95d28f4acdd1" width="200" title="Home Screen">
<img src="https://github.com/irehmaan/Flutter-App-for-Esp32-based-Weather-Station/assets/88653030/231ab654-f074-4bc6-9a67-7b42db7259f7" width="200" title="Register User">


## Overview

This project demonstrates how to build a Flutter app that integrates with Firebase to create a real-time weather monitoring system using an ESP32-based Weather Station. The app allows users to access real-time weather data, register, and log in securely.

## Features

- Real-time weather data display from Firebase Realtime Database.
- User authentication and authorization.
- User registration.
- Secure data transmission and storage.
- User-friendly interface for monitoring weather conditions.

## Technologies Used

- **Flutter**: Cross-platform framework for building mobile applications.
- **Firebase**: Backend as a Service (BaaS) platform for authentication, database, and hosting.
- **ESP32**: Microcontroller used for sensing environmental data and uploading it to Firebase.
- **Dart**: Programming language for building Flutter apps.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Install Flutter and Dart: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)
- Set up a Firebase project: [Firebase Console](https://console.firebase.google.com/)
- ESP32 Development Environment: [ESP-IDF Setup](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/get-started/)

## Getting Started

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/esp32-flutter-weather-station.git
2. Navigate to the project directory:
    ```bash
    cd esp32-flutter-weather-station
3. Install dependencies:
    ```bash
    flutter pub get
4. Configure Firebase:Add your Firebase configuration files to the /android/app and /ios directories.
   
5. Connect your ESP32 device to the project and set up Firebase integration for data upload.

6. Run the app: 
   ```bash
     flutter run.

## Usage

Open the app and register/login with your credentials.
Access real-time weather data from the main dashboard.


## Contributing

Contributions are welcome! Please feel free to submit a pull request.
