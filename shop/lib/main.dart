import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'screens/categoies_meals_screen.dart';
import 'utils/app_routes.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/tabs_screen.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.pink
      ),

      routes: {
        AppRoutes.HOME: (ctx) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(), 
      },

      //onGenerateRoute: (settings) { 
       // if(settings.name == '/alguma-coisa')
       // {
       //   return null;
       // }else if (settings.name == 'aa')
       // {
       //   return null; 
       // }
        //else
        //{
        //  return MaterialPageRoute(
        //    builder: (_) {
        //      return CategoriesScreen(); }
          //    );
       /// }
     // },
    );
  }
}