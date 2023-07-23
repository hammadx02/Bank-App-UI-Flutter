import 'package:flutter/material.dart';

import '../constents/constents.dart';

class Circle extends StatelessWidget {
  final circleIcon;
  final circleText;
  const Circle({super.key, required this.circleIcon, required this.circleText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(1, 3),
              ),
            ],
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  circleIcon,
                  color: themeColor,
                  size: 30,
                ),
                const SizedBox(
                  height: 3,
                ),
                Center(
                  child: Text(
                    circleText,
                    style: const TextStyle(
                        color: themeColor,
                        fontSize: 10,
                        fontFamily: 'Poppins Medium'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
