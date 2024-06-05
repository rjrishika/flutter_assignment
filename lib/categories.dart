import 'package:assignment/categories.dart';
import 'package:assignment/categoryCard.dart';
import 'package:assignment/navigationBar.dart';
import 'package:assignment/searchBar.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Categories'),
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Sidebar
            Container(
              width: 80.0,
              height: MediaQuery.of(context).size.height,
              color: const Color(0xFFE6E6FA), // Lavender color
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 16.0),
                  // Four images with text underneath
                  for (var i = 0; i < 4; i++)
                    Column(
                      children: <Widget>[
                        Image.asset('assets/cake.png'),
                        const SizedBox(height: 8.0),
                        Text(
                          'Text $i',
                          style: const TextStyle(color: Colors.black, fontSize: 12.0),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16.0), // Space between each image and text
                      ],
                    ),
                ],
              ),
            ),
            // Search bar and main content
            Expanded(
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: customSearchBar(),),
                  Expanded(
                    child: SingleChildScrollView(
                      child: GridView.builder(
                        shrinkWrap: true, // Ensure that GridView occupies only the space it needs
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 0.75,
                          crossAxisSpacing: 8.0,
                          mainAxisSpacing: 8.0,
                        ),
                        itemCount: 6, // Change this number to the total number of cards you need
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CategoryCard(
                              imagePath: 'assets/cake.jpg',
                              text: 'Category $index',
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 60), // Adjust the height to create space for the BottomNavigationBar
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: navigationBar(context),
    );
  }
}