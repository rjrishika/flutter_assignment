import 'package:flutter/material.dart';

Widget promotionCard() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
    child: Container(
      width: 300, // Adjust width as necessary
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.asset(
        "assets/bouqet.jpg",
        fit: BoxFit.contain,
      ),
    ),
  );
}
