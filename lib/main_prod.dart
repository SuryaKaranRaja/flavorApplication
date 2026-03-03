import 'package:flutter/material.dart';
import 'flavor_config.dart';
import 'app.dart';

void main() {
  FlavorConfig(flavor: Flavor.prod, name: "PROD", baseUrl: "https://api.com");

  runApp(const MyApp());
}
