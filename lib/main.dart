import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            children: [
              Container(
                width: 42.0,
                height: 42.0,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.0),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00EAFF),
                        Color(0xFF0076FF),
                      ]),
                ),
                child: const Icon(Icons.home, color: Colors.white),
              ),
              const SizedBox(width: 12),
              Container(
                child: const Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF242629),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
