import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBAr(),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: FeaturedBooksListView(),
              ),
              SizedBox(height: 40),
              Padding(
                padding: edgeInsets,
                child: Text('Best Sellers', style: Styles.textStyle18),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: edgeInsets,
            child: BestSellerListView(),
          ),
        ),
        // SliverToBoxAdapter(
        //   child: SizedBox(
        //     height: 100,
        //   ),
        // )
      ],
    );
    // return const Padding(
    //   padding: EdgeInsets.symmetric(horizontal: 25),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     // mainAxisAlignment: MainAxisAlignment.s,
    //     children: [
    //       CustomAppBAr(),
    //       FeaturedBooksListView(),
    //       SizedBox(height: 40),
    //       Text('Best Sellers', style: Styles.textStyle18),
    //       BestSellerListView(),
    //     ],
    //   ),
    // );
  }
}
