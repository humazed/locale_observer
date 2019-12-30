import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Utility for detecting when the system tells the app that the user's locale has
/// changed. For example, if the user changes the system language
/// settings.
///
/// It works by poxing [WidgetsBindingObserver]'s [didChangeLocales]
class LocaleObserver extends StatefulWidget {
  const LocaleObserver({
    Key key,
    this.didChangeLocales,
    this.child,
  }) : super(key: key);

  /// Called when the system tells the app that the user's locale has
  /// changed. For example, if the user changes the system language
  /// settings.
  ///
  /// This method exposes notifications from [Window.onLocaleChanged].
  final void Function(
      BuildContext context,
      List<Locale> locales,
      ) didChangeLocales;

  /// the [child] should be [MaterialApp] or [CupertinoApp]
  /// If you want to observe changes as soon as the app open
  /// and to continue to do to as log as the app is alive.
  final Widget child;

  @override
  LocaleObserverState createState() => LocaleObserverState();
}

class LocaleObserverState extends State<LocaleObserver>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeLocales(List<Locale> locales) {
    super.didChangeLocales(locales);
    widget.didChangeLocales(context, locales);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
