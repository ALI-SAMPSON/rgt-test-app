<!-- ![Alt text](/relative/path/to/img.jpg?raw=true "Optional Title")
![Alt text](http://full/path/to/img.jpg "Optional title") -->

| Light Mode - Home V2 (Scroll 1)                                                                                   |  Dark Mode - Home V2 (Scroll 1)                                             |
| -------------------------------------------------------------------------------------------------------------  |  ----------------------------------------------------------------------|
| ![screenshot-1705274521292](https://github.com/ALI-SAMPSON/rgt-test-app/assets/17532408/9e691a22-956c-47d1-80d6-adfcec94b09e) | ![screenshot-1705274444346](https://github.com/ALI-SAMPSON/rgt-test-app/assets/17532408/85b667ab-9e65-4920-9016-365bcab9efc4)

| Light Mode - Home V2 (Scroll 2)                                                                                   |  Dark Mode - Home V2 (Scroll 2)                                           |
| -------------------------------------------------------------------------------------------------------------  |  ------------------------------------------------------------------------|
| ![screenshot-1705274555309](https://github.com/ALI-SAMPSON/rgt-test-app/assets/17532408/c0b9940d-6fe0-4ef7-a8c0-7b757d2795a6) |  !![screenshot-1705274489273](https://github.com/ALI-SAMPSON/rgt-test-app/assets/17532408/4da0a520-072d-4ad8-8116-6f177bb04688)



## Getting Started

The Boilerplate contains the minimal implementation required to complete the evaluation from `Really Great Tech` Team.

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
https://github.com/ALI-SAMPSON/rgt-test-app
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

* Home
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
* [Flutter Localizations](https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html)


### Folder Structure
Here is the core folder structure which flutter provides.

```
flutter_test_app/
|- android
|- build
|- ios
|- lib
|- test
```

Here is the folder structure we have been using in this project

```
lib/
|- gen/
|- src/
|- app.dart
|- main.dart
```

Now, lets dive into the lib folder which has the main code for the application.

```
1- app - consist of parent widget of the entire application after which every other code executes
2- commons.widgets - the common widgets for your applications. For example, Button, TextField, AnimatedColumnWidget, AnimatedColumnWidget etc.
3- utils - All the application level constants are defined in this directory with-in their respective files. This directory contains the utils/ functions of your application constants for `theme`, `helpers`, `logger`, and `formatters`.
4- features -  all the ui of your project, contains sub directory for each screen
5- localization -  contains all files for localization of strings or texts used in the application
6- env/env.dart — This file contains all the API endpoints and secured keys used in app.
7- routes/routes.dart — This file contains all the routes for the application.
8- main.dart - This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.
```

### Gen

This directory contains all the application level constants. A separate file is created for each type as shown in example below:

```
gen/
|- assets.gen.dart
|- assets.gen.dart
|- locator.gen.dart
```

### Features


All functional requirements are have seperate folders consisting of `application`,
`data`, `domain`, and `presentation`. 
`Application` layer contains all services providing a gateway for data entry into the UI.
`Data` layer represents the data layer of your application. It is sub-divided into three directories `data.sources`, `repositories` and `services`, each containing the domain specific logic. Since each layer exists independently, that makes it easier to unit test. The communication between UI and data layer is handled by using central service.
`Domain` layer consist of all the business logic of the application. This is where all model related to a specific feature is created to retrieve and provide data to the UI.
`Presentation` layer consist of all User related widgets which are put together to form the UI. It consist of the `view.models`, `views`, `widgets`

```
features/
|- home/
    |- application/
    |- data/
    |- domain/
    |- presentation/
```

### Commons.Widgets

The Commons is where all the common application reusable components lives.
Ti consist of custom listview, column & animation widgets to help ease the stress of writing so much boilerplate code. Here is a view of folder structure:

```
commons.widgets/
|- animated.column.dart
|- animated.listview.dart
|- slide.left.right.dart
```

### Localization

This directory contains all files used for localization and internationalization of the application. There are two main `arb` files, `app_en.arb` & `app_es.arb` for English and Spanish Languages respectively. You can create more files with the country code of your choice if need be 

```
localization/
    |- i10n/
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

Project Link: [https://github.com/ALI-SAMPSON/rgt-test-app](https://github.com/ALI-SAMPSON/rgt-test-app)