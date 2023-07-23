import 'package:flutter/material.dart';

import '../constents/constents.dart';

class Rectangle extends StatelessWidget {
  final rectangleIcon;
  final rectangleText, rectangleText2;
  const Rectangle(
      {super.key,
      required this.rectangleIcon,
      required this.rectangleText,
      required this.rectangleText2});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Container(
          height: 73,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(1, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: rectangleText,
                        style: const TextStyle(
                          color: themeColor,
                          fontSize: 16,
                          fontFamily: 'Poppins Bold',
                        ),
                        children: [
                          TextSpan(
                            text: rectangleText2,
                            style: const TextStyle(
                                fontFamily: 'Poppins Regular',
                                fontSize: 12,
                                color: themeColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 85,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    children: [
                      Icon(
                        rectangleIcon,
                        color: themeColor,
                        size: 30,
                      ),
                    ],
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
