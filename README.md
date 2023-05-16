# Flutter Clean Architecture - by Azlaan Khan

This project will demonstrate you the use of Clean Architecture with Bloc.

## Getting Started

To run the project you need to configure with Flutter 3.10.0. 
I have created a Make file script for you, you can directly run those script or take a reference from it

### Steps To Run the Project

- Setup Flutter 3.10.0
- Call Command:
  - make pub-get or fvm-get

### Entry Point

You can Run any of below:
- main.dart
- main_dev.dart
- main_prod.dart

### Manual Commands Step by Step if you are not using make file commands
- cd data && flutter clean && flutter pub get && cd ..
- cd domain && flutter clean && flutter pub get && cd ..
- flutter clean && flutter pub get
- cd data && flutter pub run build_runner build --delete-conflicting-outputs && cd ..
- cd domain && flutter pub run build_runner build --delete-conflicting-outputs && cd ..
- flutter pub run build_runner build --delete-conflicting-outputs

### About Azlaan Khan
Azlaan has been working in the IT industry since last 7 years.
He has contributed in many apps of Different domains.
Have skills to work in Almost any mobile technology and also sometimes work on backend techs.

Linkedin: https://www.linkedin.com/in/azlaan-khan-74b615a5
