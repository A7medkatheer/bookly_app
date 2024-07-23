import 'package:bookly_app/core/utils/colored_print/flutter_colored_print.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_selle_lrist_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 5),
      itemCount: 50,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: TextButton(
            child: const Text("data"),
            onPressed: () {
              coloredPrint(success('✅  searchController value: $index'));
            },
          ),
          // child: BookListViewItem(

          // ),
        );
      },
    );
  }
}
