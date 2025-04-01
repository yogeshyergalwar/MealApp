import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/categoryModel.dart';

class GrideData extends StatelessWidget {
  GrideData({super.key, required this.category,required this.onselected});
  final void Function( ) onselected;

  Category1 category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onselected,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(colors: [
              category.color.withOpacity(0.55),
              category.color.withOpacity(0.9),
            ], begin: Alignment.topLeft, end: Alignment.topRight)),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
      ),
    );
  }
}
