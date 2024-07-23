import 'package:bookly_app/core/utils/colored_print/flutter_colored_print.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return Column(
      children: [
        const SizedBox(height: 20),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Search',
            suffixIcon: const Icon(Icons.search),
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
          ),
          controller: searchController,
          onFieldSubmitted: (value) {
            
            coloredPrint(success('✅  searchController value: $value'));

          },
        ),
      ],
    );
  }
}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.white),
    borderRadius: BorderRadius.circular(12),
  );
}
