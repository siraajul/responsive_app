import 'package:flutter/material.dart';

import 'LandscapeLayoutScreen.dart';
import 'PortraitLayoutScreen.dart';

class OrientationScreen extends StatelessWidget {
  const OrientationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive App'),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? const PortraitLayoutScreen()
              : const LandscapeLayoutScreen();
        },
      ),
    );
  }
}
