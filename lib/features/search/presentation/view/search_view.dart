
import 'package:bookly_app/features/search/presentation/view/widgets/search_view_body.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: SearchViewBody(),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search),
        onPressed: () {
          Println('Search button pressed');
        },
      ),
    );
  }
}
