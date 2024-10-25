import 'package:flutter/material.dart';
import 'package:what_eat_flutter/widgets/recyclers/search_form.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});
   @override   State<StatefulWidget> createState() {
    return SearchPageState();   } }

class SearchPageState extends State<SearchPage> {   @override   Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
      ),
      body: const Center(
        child: SearchForm(),
    ),
      );
} 
}

