import 'package:assignment/bottomCard.dart';
import 'package:assignment/card.dart';
import 'package:assignment/navigationBar.dart';
import 'package:assignment/searchBar.dart';
import 'package:assignment/textWithLines.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepPurple.shade200, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.0, 0.2],
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: customSearchBar(),
                ),
                const SizedBox(
                  height: 10,
                ),
                GradientTextWithLines(text: "PLAN EVENT"),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                            child: featureCard("Birthday", "assets/cake.png"),
                          )),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                            child: featureCard("Anniversary", "assets/cake.png"),
                          )),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                            child: featureCard("Marriage", "assets/cake.png"),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                            child: featureCard("Retirement", "assets/cake.png"),
                          )),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                            child: featureCard("Baby Shower", "assets/cake.png"),
                          )),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                            child: featureCard("Engagement", "assets/cake.png"),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                            child: featureCard("Placeholder", "assets/cake.png"),
                          )),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                            child: featureCard("Placeholder", "assets/cake.png"),
                          )),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                            child: featureCard("Placeholder", "assets/cake.png"),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GradientTextWithLines(text: "PROMOTION"),
                SizedBox(
                  height: 200, // Adjust height as necessary
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5, // Adjust the number of items as necessary
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: promotionCard(),
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: navigationBar(context),
      ),
    );
  }
  }