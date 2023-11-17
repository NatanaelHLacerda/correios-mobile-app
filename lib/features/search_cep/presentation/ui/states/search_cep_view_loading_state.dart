import 'package:flutter/material.dart';

class SearchCepViewLoadingState extends StatefulWidget {
  const SearchCepViewLoadingState({super.key});

  @override
  State<SearchCepViewLoadingState> createState() =>
      _SearchCepViewLoadingStateState();
}

class _SearchCepViewLoadingStateState extends State<SearchCepViewLoadingState> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
