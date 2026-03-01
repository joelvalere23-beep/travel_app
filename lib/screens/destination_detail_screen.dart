import 'package:flutter/material.dart';

class DestinationDetailScreen extends StatelessWidget {
  final String destination;  
  final List<String> attractions;  
  final List<String> hotels;  
  final List<String> flights;

  DestinationDetailScreen({Key? key, required this.destination, required this.attractions, required this.hotels, required this.flights}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(destination),
              background: Image.network(
                'https://example.com/${destination.toLowerCase().replaceAll(' ', '_')}.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text(attractions[index]),
                );
              },
              childCount: attractions.length,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hotels:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ...hotels.map((hotel) => ListTile(title: Text(hotel))).toList(),
                  Text('Flights:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ...flights.map((flight) => ListTile(title: Text(flight))).toList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
