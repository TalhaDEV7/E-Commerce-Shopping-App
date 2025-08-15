import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:my_app/my_app.dart';

void main() async {
  /// Widget Fluter Binding
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(Duration(seconds: 4));
  FlutterNativeSplash.remove();
await SystemChrome.setPreferredOrientations
  /// Potrait up the device
  ([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}
