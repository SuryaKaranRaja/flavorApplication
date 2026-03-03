import 'package:flutter/material.dart';
import 'flavor_config.dart';
import 'app.dart';

void main() {
  FlavorConfig(flavor: Flavor.qa, name: "QA", baseUrl: "https://qa.api.com");

  runApp(const MyApp());
}
