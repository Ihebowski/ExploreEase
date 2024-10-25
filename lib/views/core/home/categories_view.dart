import 'package:exploreease/services/category_service.dart';
import 'package:exploreease/views/constants/colors.dart';
import 'package:exploreease/views/core/home/category_card.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.0,
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:26.0,
                  color: text1Color,
                ),
              ),
              Text(
                "See More",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                  color: text1Color,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, _) => const SizedBox(width: 7.5),
              scrollDirection: Axis.horizontal,
              itemCount: categoryList.length,
              itemBuilder: (context, index) => CategoryCard(
                title: categoryList[index].title,
                path: categoryList[index].path,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
