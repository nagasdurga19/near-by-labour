import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchQuery = '';
  bool filterBySkill = true;
  bool filterByLocation = true;

  void performSearch() {
    // You can add your search logic here
    print('Searching for: $searchQuery');
    print('Filter by Skill: $filterBySkill');
    print('Filter by Location: $filterByLocation');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children