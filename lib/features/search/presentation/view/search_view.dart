import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/presentation/view/widgets/search_view_body.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SearchViewBody(
          bookModel: bookModel,
        ),
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
