import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBAr extends StatelessWidget {
  const CustomAppBAr({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 24, right: 24, bottom: 20),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 24,
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.search, size: 24),
            onPressed: () async {
              // await showSearch(
              //   context: context,
              //   delegate: CustomSearchDelegate(),
              // );

              GoRouter.of(context).push(
                AppRouter.searchView,
              );
            },
          ),
        ],
      ),
    );
  }
}
