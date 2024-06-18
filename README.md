# Kanban Taskmanager - by Azlaan Khan

This app is a Todo Task manager app in KanBan form.
I am using https://app.todoist.com/
I have created a project under this site and fetching its data to show in app
All functionality is not yet implemented but is sufficient to understand.
This project will demonstrate you the use of Clean Architecture with Bloc.

## Getting Started

To run the project you need to configure with Flutter 3.22.2.
I have created a Make file script for you, you can directly run those script or take a reference from it

### Steps To Run the Project

- Setup Flutter 3.22.2
- Setup FVM
  - Terminal Command: make app-setup
- Dependencies Download:
  - With FVM
    - Terminal Command: make fvm-get
  - Without FVM
    - Terminal Command: make pub-get

### API Setup

- Todo Api Developer console:
  - https://developer.todoist.com/rest/v2/#overview
- To Create an app visit here: 
  - https://developer.todoist.com/appconsole.html
  - After creating app copy Test Token and paste it inside

### Entry Point

You can Run any of below:
- entry_point/main_mock.dart
- entry_point/main_dev.dart
- entry_point/main_prod.dart

### Manual Commands Step by Step if you are not using make file commands
- cd data && flutter clean && flutter pub get && cd ..
- cd domain && flutter clean && flutter pub get && cd ..
- flutter clean && flutter pub get
- cd data && flutter pub run build_runner build --delete-conflicting-outputs && cd ..
- cd domain && flutter pub run build_runner build --delete-conflicting-outputs && cd ..
- flutter pub run build_runner build --delete-conflicting-outputs

### About Azlaan Khan
Azlaan has been working in the IT industry since last 8 years.
He has contributed in many apps of Different domains.
Have skills to work in Almost any mobile technology and also sometimes work on backend techs.

Linkedin: https://www.linkedin.com/in/azlaan-khan-74b615a5

