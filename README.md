# locale_observer

[![pub package](https://img.shields.io/pub/v/locale_observer.svg)](https://pub.dev/packages/locale_observer)

Utility for detecting when the system tells the app that the user's locale has.

## Getting Started

Should be above `MaterialApp` or `CupertinoApp` in the widget tree
If you want to observe changes as soon as the app open 
and to continue to do so as log as the app is alive.

```dart
LocaleObserver(
  didChangeLocales: (BuildContext context, List<Locale> locales) {
    print("locales = $locales");
  },
  child: MaterialApp(
    home: HomePage(),
  ),
);
```