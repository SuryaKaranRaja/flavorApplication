import 'package:flutter/material.dart';
import 'flavor_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Center(
            child: Text(
              "Main Application Screen",
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
