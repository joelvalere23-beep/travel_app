import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<String> favoriteDestinations;

  FavoritesScreen({Key? key, required this.favoriteDestinations}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Destinations'),
      ),
      body: favoriteDestinations.isEmpty
          ? Center(
              child: Text(
                'No favorite destinations yet!',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: favoriteDestinations.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(favoriteDestinations[index]),
                );
              },
            ),
    );
  }
}