import 'package:flutter/material.dart';
import 'flavor_config.dart';
import 'app.dart';

void main() {
  FlavorConfig(flavor: Flavor.dev, name: "DEV", baseUrl: "https://dev.api.com");

  runApp(const MyApp());
}
