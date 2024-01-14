<!-- ![Alt text](/relative/path/to/img.jpg?raw=true "Optional Title")
![Alt text](http://full/path/to/img.jpg "Optional title") -->

| Light Mode - Splash Screen                                                                                     |  Dark Mode - Splash Screen                                             |
| -------------------------------------------------------------------------------------------------------------  |  ----------------------------------------------------------------------|
| ![IMG_0102](https://github.com/ALI-SAMPSON/quavinci-test/assets/17532408/bc9249d8-29c5-4b96-8f56-1cf9579aa00a) |  ![IMG_0098](https://github.com/ALI-SAMPSON/quavinci-test/assets/17532408/989bb684-1ae0-4104-8eb1-94592eea8a8a)

| Light Mode - Loading Screen                                                                                    |  Dark Mode - Loading Screen                                            |
| -------------------------------------------------------------------------------------------------------------  |  ------------------------------------------------------------------------|
| ![IMG_0112](https://github.com/ALI-SAMPSON/quavinci-test/assets/17532408/471f8414-6e66-466c-b96a-956cfbff90a2) |  ![IMG_0113](https://github.com/ALI-SAMPSON/quavinci-test/assets/17532408/4f653338-f611-4cee-81e3-4af30ef5bf82)


| Light Mode - Home/Post Screen                                                                                  |  Dark Mode - Home/Post Screen                                            |
| -------------------------------------------------------------------------------------------------------------  |  ------------------------------------------------------------------------|
| ![IMG_0103](https://github.com/ALI-SAMPSON/quavinci-test/assets/17532408/cf80d8b5-aa95-4c69-b614-128baaca3064) |  ![IMG_0099](https://github.com/ALI-SAMPSON/quavinci-test/assets/17532408/0758a2fc-8f48-4ea4-b2dd-38800fea6dde)


| Light Mode - Post Detail Screen                                                                                |  Dark Mode - Post Detail                                                 |
| -------------------------------------------------------------------------------------------------------------  |  ------------------------------------------------------------------------|
| ![IMG_0101](https://github.com/ALI-SAMPSON/quavinci-test/assets/17532408/e6b8abc3-9992-43a6-9d9c-5f208c99f855) |  ![IMG_0100](https://github.com/ALI-SAMPSON/quavinci-test/assets/17532408/009e147d-f28f-4d92-b7b7-2a41c19b8730)



## Getting Started

The Boilerplate contains the minimal implementation required to complete the evaluation from Quavinci Team.

## Requirements
1. Flutter version 3.16.7
2. Dart 3.2.4
3. Xcode 15.1
4. DevTools version 2.28.5
5. Android SDK version 34.0.0
5. CocoaPods version 1.14.3
7. IDE - VS Code or Android Studio with flutter plugin installed


## How to Use 

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/ALI-SAMPSON/quavinci-test.git
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```

**Step 3:**

This project uses `get_it` library that works with code generation, execute the following command to generate files:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

or watch command in order to keep the source code synced automatically:

```
flutter packages pub run build_runner watch
```

**Step 4:**

```
flutter run 
```

## Hide Generated Files

In-order to hide generated files, navigate to `Android Studio` -> `Preferences` -> `Editor` -> `File Types` and paste the below lines under `ignore files and folders` section:

```
*.g.dart;
```

In Visual Studio Code, navigate to `Preferences` -> `Settings` and search for `Files:Exclude`. Add the following patterns:
```
**/*.g.dart
```

## Boilerplate Features:

* Splash
* Dashboard
* Routing
* Theme
* Provider (State Management)
* Code Generation
* Dependency Injection
* Dark Theme Support
* Multilingual Support

### Libraries & Tools Used

* [Provider](https://github.com/rrousselGit/provider) (State Management)
* [Redacted](https://pub.dev/packages/redacted) (Shimmer Loading Effect)
* [GetIt](https://github.com/fluttercommunity/get_it)
* [Build Runner](https://github.com/dart-lang/build/blob/master/build_runner)
* [Dependency Injection](https://github.com/fluttercommunity/get_it)
* [Flutter ScreenUtil](https://github.com/OpenFlutter/flutter_screenutil)
* [PersistentBottomNavBar](https://github.com/BilalShahid13/PersistentBottomNavBar)
* [Flutter Localizations](https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html)


### Folder Structure
Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- ios
|- lib
|- test
```

Here is the folder structure we have been using in this project

```
lib/
|- app/
|- commons/
|- core/
|- data/
|- features/
|- i10n/
|- main.dart
|- routes.dart
```

Now, lets dive into the lib folder which has the main code for the application.

```
1- app - consist of parent widget of the entire application after which every other code executes
2- commons - the common widgets for your applications. For example, Button, TextField, AnimatedColumnWidget, AnimatedColumnWidget etc.
3- core - All the application level constants are defined in this directory with-in their respective files. This directory contains the utils/ functions of your application constants for `theme`, `dimentions`, `injections`, `network`, `utils` and `strings`.
4- features -  all the ui of your project, contains sub directory for each screen
5- i10n -  contains all files for localization of strings or texts used in the application
6- routes.dart — This file contains all the routes for the application.
7- main.dart - This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.
```

### Core

This directory contains all the application level constants. A separate file is created for each type as shown in example below:

```
core/
|- injections/
   |- locator.dart
|- network/
|- utils/
   |- constants
   |- device
   |- formatters
   |- helpers
   |- theme
```

### Data

All the business logic of your application will go into this directory, it represents the data layer of your application. It is sub-divided into three directories `local`, `network` and `sharedperf`, each containing the domain specific logic. Since each layer exists independently, that makes it easier to unit test. The communication between UI and data layer is handled by using central repository.

```
features/
|- splash/
    |- pages/
    |- models/
    |- view.models/
    |- widgets/
|- dashboard/
    |- pages/
    |- models/
    |- tabs/
    |- view.models/
    |- widgets/
```

### Commons

The Commons is where all the common application reusable components lives.
Ti consist of custom listview, column & animation widgets to help ease the stress of writing so much boilerplate code. Here is a view of folder structure:

```
commons/
|- shared.widgets/
    |- animated.column.dart
    |- animated.listview.dart
    |- empty.state.item.dart
    |- slide.left.right.dart
```

### i10n

This directory contains all files used for localization and internationalization of the application. There are two main `arb` files, `app_en.arb` & `app_es.arb` for English and Spanish Languages respectively. You can create more files with the country code of your choice if need be 

```
i10n/
|- app_en.arb
|- app_es.arb
```

### Routes

This contains all routes used in this application and  structure is as follows: 

```
routes/
|- routes.dart
```

### Contribute

To contribute to this project, kindly send a `hi 😊` on twitter or leave me a mail and I'll keep in touch.


### Contact

Your Name - [@ali-sampson](https://github.com/ALI-SAMPSON) - alisampson2@gmail.com

Project Link: [https://github.com/ALI-SAMPSON/quavinci-test](https://github.com/ALI-SAMPSON/quavinci-test)