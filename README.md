# flutter_codebase

## Flutter's build modes
https://docs.flutter.dev/testing/build-modes#debug
The command "flutter run --release" compiles to release mode.
The command "flutter run --profile" compiles to profile mode.


## How to make relese apk with smaller size apk
flutter clean
flutter build appbundle --target-platform android-arm,android-arm64,android-x64
flutter build apk --target-platform android-arm,android-arm64,android-x64
https://stackoverflow.com/questions/49064969/flutter-apps-are-too-big-in-size
https://stackoverflow.com/questions/70431428/how-to-decrease-flutter-app-size-in-android


## Weather API s
https://www.weatherapi.com/pricing.aspx
https://openweathermap.org/price


## Firebase Remote config tutorial
https://mobikul.com/integrate-firebase-remote-config-in-flutter/


## Correct way of storing API Keys in flutter following best practises - Firebase config
https://stackoverflow.com/questions/51895194/correct-way-of-storing-api-keys-in-flutter-following-best-practises


# Downloading ios tools...   issue
with propper network connectio
cd ios
pod deintegrate
cd ..
flutter clean
flutter build ios