# Flutter Personalized Learning App

A simple, clean Flutter application for personalized learning experiences. This project is a starting point for building mobile (and web) apps that adapt content and learning paths to individual users.

Key goals:
- Provide a lightweight, maintainable Flutter codebase
- Demonstrate basics of personalization (profiles, progress tracking, adaptive content)
- Be easy to run and extend

## Features
- User profiles and simple personalization
- Course/lesson listing with progress tracking
- Clean, modular Flutter code structure
- Ready for adding backend integrations (Firebase, REST API, etc.)



## Getting started

### Requirements
- Flutter (stable) — https://flutter.dev
- Dart SDK (bundled with Flutter)
- An Android or iOS device/emulator, or a browser for web

Recommended:
- Flutter 3.x or newer (use `flutter --version` to check)

### Install
Clone the repo and fetch dependencies:

```bash
git clone https://github.com/en-arthur/flutter-personalized-learning-app.git
cd flutter-personalized-learning-app
flutter pub get
```

### Running
Run on connected device or emulator:

```bash
# Run on Android/iOS
flutter run

# Run on specific device (list devices first)
flutter devices
flutter run -d <device-id>

# Run for web
flutter run -d chrome
```

## Project structure (high level)
- lib/
  - main.dart — app entrypoint
  - src/
    - models/ — data models (user, course, lesson)
    - screens/ — UI screens and pages
    - widgets/ — reusable UI components
    - services/ — business logic, local persistence, and API clients
- assets/ — images, fonts, and other static assets
- test/ — unit and widget tests

## Contact
Author: en-arthur  
GitHub: https://github.com/en-arthur


