# Adhkar Package

Adhkar is a Flutter package that provides all collections of adhkars as provided by https://sunnah.com/hisn.

## Installation

To use this package, add `adhkar` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  awesome_widgets: ^0.0.1
```
# Usage
getAllAdhkar
The getAllAdhkar button provides you all the available adhkars. It can be used as follows:

```dart
void _getAllAdhkar() {
    List<Adhkar> adhkars = AdhkarFactory.getAdhkar();
    print(adhkars.length);
}
```
getAllAdhkarId
The getAllAdhkarId button provides you all the adhkars id in an array. It can be used as follows:

```dart
void _getAllAdhkarId() {
    final get_adhkar = AdhkarFactory.getAllAdhkarId();
    print(get_adhkar);
}
```
getASingleAdhkar
The getASingleAdhkar button provides you a single adhkar base on the id you pass. It can be used as follows:

```dart
void _getASingleAdhkar() {
    Adhkar adhkar = AdhkarFactory.getAdhkar(adhkarId: "c1");
    print(adhkar.title);
}
```

# Contributing
We welcome contributions from the community. To contribute to Adhkar, please follow the guidelines outlined in the CONTRIBUTING.md file.