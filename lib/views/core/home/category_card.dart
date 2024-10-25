import 'package:exploreease/views/constants/colors.dart';
import 'package:exploreease/views/core/category/category_page.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String path;
  const CategoryCard({super.key, required this.title, required this.path});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CategoryPage(title: title)),
        );
      },
      child: SizedBox(
        height: 175.0,
        child: Column(
          children: [
            Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                color: itemBackgroundColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  path,
                  color: text1Color,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              title,
              style: const TextStyle(
                color: text1Color,
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
