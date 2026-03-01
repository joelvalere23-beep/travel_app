import 'package:flutter/material.dart';

class ItineraryScreen extends StatefulWidget {
  @override
  _ItineraryScreenState createState() => _ItineraryScreenState();
}

class _ItineraryScreenState extends State<ItineraryScreen> {
  List<Map<String, dynamic>> itineraries = [];
  double totalBudget = 0.0;

  void addItinerary(String destination, double budget) {
    setState(() {
      itineraries.add({'destination': destination, 'budget': budget});
      totalBudget += budget;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Itineraries'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: itineraries.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(itineraries[index]['destination']),
                  subtitle: Text('Budget: \$${itineraries[index]['budget']}'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text('Total Budget: \$${totalBudget.toStringAsFixed(2)}'),
                ElevatedButton(
                  onPressed: () {
                    // Function to add itineraries would be called here
                  },
                  child: Text('Add Itinerary'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}