import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: media.height,
          width: media.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.grey.shade400,
            Colors.grey.shade300,
            Colors.grey.shade500,
          ], begin: Alignment.centerLeft, end: Alignment.bottomRight)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Weather Data",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.cloudy_snowing,
                  size: 30,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
