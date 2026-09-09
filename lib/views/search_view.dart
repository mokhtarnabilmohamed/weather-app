import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Search for a city")),
      body: Padding(
        padding: const EdgeInsets.only(top: 24, right: 16, left: 16),
        child: TextField(
          onSubmitted: (value) async {
            WeatherModel weatherModel = await WeatherService(
              Dio(),
            ).getCurrentWeather(cityName: value);
            log(weatherModel.cityName);
          },
          decoration: InputDecoration(
            hintText: "Enter a city name",
            suffixIcon: const Icon(Icons.search),
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
