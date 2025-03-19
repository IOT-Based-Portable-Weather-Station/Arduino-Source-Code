import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class squareTile extends StatelessWidget {
  final String imgPath;
  final Function()? onTap;
  const squareTile({super.key, required this.onTap, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(16)),
        child: Image.asset(
          imgPath,
          height: 40,
        ),
      ),
    );
  }
}
