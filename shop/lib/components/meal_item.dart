import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  const MealItem(this.meal);

  void _selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: _selectMeal,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 7,
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      child: Image.network(meal.imageUrl,
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover)),
                  Positioned(
                    bottom: 20, 
                    right: 10,
                    child: Container(
                      width: 300, 
                      color: Colors.black54,
                      padding: EdgeInsets.symmetric(
                        vertical: 5, 
                        horizontal: 20, 
                      ),
                      child: Text(
                        meal.title,
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                        softWrap: true, 
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ],
              ), 
              Padding(padding: EdgeInsets.all(20), 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule), 
                      SizedBox(width: 6), 
                      Text('${meal.duration} MIN')
                    ],
                  ), 
                                    Row(
                    children: [
                      Icon(Icons.work), 
                      SizedBox(width: 6), 
                      Text('${meal.complexityText}'),
                    ],
                  )
                ],
              ),
              ),
            ],
          ),
        ));
  }
}