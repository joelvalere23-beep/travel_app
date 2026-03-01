import 'package:flutter/material.dart';

class DestinationsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> destinations = [
    {'name': 'Paris', 'isFavorite': false},
    {'name': 'Tokyo', 'isFavorite': false},
    {'name': 'New York', 'isFavorite': false},
    {'name': 'London', 'isFavorite': false},
  ];

  void _toggleFavorite(int index) {
    destinations[index]['isFavorite'] = !destinations[index]['isFavorite'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destinations'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: destinations.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => _toggleFavorite(index),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[ 
                  Text(destinations[index]['name'], style: TextStyle(fontSize: 20)),
                  Icon(
                    destinations[index]['isFavorite'] ? Icons.favorite : Icons.favorite_border,
                    color: destinations[index]['isFavorite'] ? Colors.red : null,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}