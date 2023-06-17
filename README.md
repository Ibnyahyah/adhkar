Adhkar for muslims which is extracted from [hisnul](https://sunnah.com/hisn) and it contains all the valuable information your will for all your daily live.

## Features

Get all supplications, or adhkar, List all the adhkar Id, get a single adhkar or supplication

## Getting started

To get started, add ```adhkar: any``` to your dependencies in pubspec.yaml file and run ```flutter pub get```.

## Usage

Below are the three usability of adhkar package and examples

```dart
void _getAllAdhkarId() {
    final get_adhkar = AdhkarFactory.getAllAdhkarId();
    print(get_adhkar);
}

void _getASingleAdhkar() {
    Adhkar adhkar = AdhkarFactory.getAdhkar(adhkarId: "c1");
    print(adhkar.title);
}

void _getAllAdhkar() {
    List<Adhkar> adhkars = AdhkarFactory.getAdhkar();
    print(adhkars.length);
}
```

## Additional information

We hope to get the package value for everyone and also only to see more contributor who will help us to bring more features to the package. To contribute visit the github repository under the main branch at https://github.com/Ibnyahyah/adhkar