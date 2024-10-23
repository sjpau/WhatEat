import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});
   @override   State<StatefulWidget> createState() {
    return SearchPageState();   } }

class SearchPageState extends State<SearchPage> {   @override   Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
      ),
    );
} 
}

