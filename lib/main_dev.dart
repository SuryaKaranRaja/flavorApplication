import 'package:firebase_core/firebase_core.dart';
import 'package:flavors/remoteConfigurationServices.dart';
import 'package:flutter/material.dart';
import 'configSelector.dart';
import 'enum.dart';
import 'flavor_config.dart';
import 'app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: getFirebaseOptions(Environment.dev),
  );
  FlavorConfig(flavor: Flavor.dev, name: "DEV", baseUrl: "https://dev.api.com");

  await RemoteConfigService().init();
  runApp(const MyApp());
}
