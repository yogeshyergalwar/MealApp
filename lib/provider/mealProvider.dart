import 'package:riverpod/riverpod.dart';

import '../data/dummy_data.dart';

final mealProider = Provider((ref) {
  return dummyMeals;
});
