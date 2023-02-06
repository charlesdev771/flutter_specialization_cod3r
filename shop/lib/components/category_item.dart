import 'package:flutter/material.dart';
import '../models/category.dart';
import '../screens/categoies_meals_screen.dart';
import '../utils/app_routes.dart';
class CategoryItem extends StatelessWidget {
  void _selectCategory(BuildContext context) {
    //  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
    //    return CategoriesMealsScreen(category);
    //  } ));

    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      arguments: category,
    );
  }

  final Category category;

  CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
          padding: EdgeInsets.all(15),
          child: Text(category.title),
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.7),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ))),
    );
  }
}
