import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Search for a city")),
      body: Padding(
        padding: const EdgeInsets.only(top: 24, right: 16, left: 16),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Enter a city name",
            label: const Text("City Name"),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ),
    );
  }
}
