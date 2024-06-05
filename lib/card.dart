import 'package:flutter/material.dart';

Card featureCard(String name, String img) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10), // Match this with ClipRRect
    ),
    elevation: 5,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10), // Match this with Card
      child: Container(
        width: 100,
        height: 100,  // Adjusted size for better aspect ratio
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purpleAccent.withOpacity(0.1),
              Colors.purpleAccent.withOpacity(0.3),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              img, // Use the dynamic image path
              width: 70,
              height: 70,
            ),
            SizedBox(height: 5),
            Text(
              name, // Use the dynamic text
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

