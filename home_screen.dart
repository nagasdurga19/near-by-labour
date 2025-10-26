import 'package:flutter/material.dart';
import '../services/location_service.dart';
import '../services/firestore_service.dart';
import '../models/labour.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Labour> nearbyLabours = [];

  @override
  void initState() {
    super.initState();
    fetchLabours();
  }

  Future<void> fetchLabours() async {
    final location = await LocationService().getCurrentLocation();
    final labours = await FirestoreService()
        .getNearbyLabours(location.latitude, location.longitude);
    setState(() {
      nearbyLabours = labours;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Near Labour')),
      body: ListView.builder(
        itemCount: nearbyLabours.length,
        itemBuilder: (context, index) {
          final labour = nearbyLabours[index];
          return ListTile(
            title: Text(labour.name),
            subtitle: Text(labour.skill),
            trailing: labour.isAvailable
                ? Icon(Icons.check_circle, color: Colors.green)
                : Icon(Icons.cancel, color: Colors.red),
          );
        },
      ),
    );
  }
}
