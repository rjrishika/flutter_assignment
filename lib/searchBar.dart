import 'package:flutter/material.dart';

customSearchBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.purple,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search, color: Colors.grey),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for category',
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            height: 24.0,
            width: 1.0,
            color: Colors.grey.shade300,
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.mic, color: Colors.pink),
          ),
        ],
      ),
    );
  }
