import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stack Widget with Images'),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              // Background image
              Positioned.fill(
                child: Image.asset(
                  'assets/pexels1.png',
                  fit: BoxFit.cover,
                ),
              ),
              // Overlaid image 1
              Positioned(
                top: 50,
                left: 50,
                height: 200,
                child: Image.asset(
                  'assets/pexels2.png',
                ),
              ),
              // Overlaid image 2
            ],
          ),
        ),
      ),
    );
  }
}
