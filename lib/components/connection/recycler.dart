import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RecyclerListPage extends StatelessWidget {
   RecyclerListPage({super.key});

  final List<Map<String, dynamic>> recyclers = [
    {
      "name": "Recycler 1",
      "phone": "+91 9876543210",
      "location": LatLng(13.0827, 80.2707), // Example: Chennai
      "review": "Great Service!"
    },
    {
      "name": "Recycler 2",
      "phone": "+91 8765432109",
      "location": LatLng(13.0057, 80.2206), // Example: Another location
      "review": "Efficient!"
    },
  ];

  void _launchCaller(String phone) async {
    final url = 'tel:$phone';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _openMaps(LatLng location) async {
    final url =
        'https://www.google.com/maps/search/?api=1&query=${location.latitude},${location.longitude}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not open map';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recycler List'),
      ),
      body: ListView.builder(
        itemCount: recyclers.length,
        itemBuilder: (context, index) {
          final recycler = recyclers[index];
          return Card(
            child: ListTile(
              title: Text(recycler["name"]),
              subtitle: Text(recycler["review"]),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.call),
                    onPressed: () => _launchCaller(recycler["phone"]),
                  ),
                  IconButton(
                    icon: Icon(Icons.location_on),
                    onPressed: () => _openMaps(recycler["location"]),
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
