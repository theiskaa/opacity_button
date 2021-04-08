# OpacityButton 

[![Package Version](https://img.shields.io/pub/v/opacity_button?color=teal)](https://github.com/lomsa-dev/http-mock-adapter "Published package version")
[![LICENSE](https://img.shields.io/badge/License-MIT-red.svg)](https://github.com/lomsa-dev/http-mock-adapter#License "Project's LICENSE section")

---

## Installing

### Depend on it

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  opacity_button: ^0.0.1
```

### Install it

You can install packages from the command line:

```sh
$ flutter pub get
...
```
### Import it

Now in your Dart code, you can use:

```dart
import 'package:opacity_button/opacity_button.dart';
```
---
## Usage 
<img src="https://raw.githubusercontent.com/theiskaa/opacity_button/develop/example/overview/overview.gif?token=AOCUPZNTFPBEWDEE4OQAW23AN3GAE" align = "right" height = "300px">

```dart
OpacityButton(
  // required to take a widget 
  child: Image.network("https://picsum.photos/200/300"),

  onTap: () {
    // do something..
  }
  onLongPress: () {
    // do something..
  }

  // Customize the degree of opacity when the button is pressed
  opacityValue: .3,
),
```
