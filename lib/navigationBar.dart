import 'package:assignment/categories.dart';
import 'package:assignment/home.dart';
import 'package:flutter/material.dart';

Padding navigationBar(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
    child: Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        selectedIconTheme: IconThemeData(color: Colors.pink),
        unselectedIconTheme: IconThemeData(color: Colors.pink),
        selectedLabelStyle: TextStyle(color: Colors.black),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.family_restroom),
            label: 'Family',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],

        onTap: (int index) {
          // Handle navigation based on index
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
              break;
            case 1:
            // Navigate to categories page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoriesScreen()),
              );
          }
        },
      ),
    ),
  );
}