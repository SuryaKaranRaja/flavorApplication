import 'package:flavors/remoteConfigurationServices.dart';
import 'package:flutter/material.dart';
import 'flavor_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}
  class _HomePageState extends State<HomePage> {
    final remoteConfig = RemoteConfigService();
    String heading = "Loading...";

    @override
    void initState() {
      super.initState();
      loadConfig();
    }

    Future<void> loadConfig() async {
      setState(() {
        heading = remoteConfig.heading;
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Stack(
          children: [
             Center(
              child: Text(
            RemoteConfigService().heading,
                style: TextStyle(fontSize: 22),
              ),
            ),
            if (!FlavorConfig.isProd) _buildBanner(),
          ],
        ),
      );
    }

    Widget _buildBanner() {
      return Positioned(
        top: 40,
        left: 0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          color: FlavorConfig.isDev ? Colors.red : Colors.orange,
          child: Text(
            FlavorConfig.instance.name,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }
  }

