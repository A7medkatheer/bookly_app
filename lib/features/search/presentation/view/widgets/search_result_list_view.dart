import 'package:bookly_app/features/home/presentation/views/widgets/best_selle_lrist_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      // itemCount: 15,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text("data"),
          // child: BookListViewItem(

          // ),
        );
      },
    );
  }
}
