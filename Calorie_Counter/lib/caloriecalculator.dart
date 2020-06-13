class CalculatorBrain{

  CalculatorBrain({this.breakfastCalories,this.lunchCalories,this.dinnerCalories,this.snacksCalories});


final int breakfastCalories;
final int lunchCalories;
final int dinnerCalories;
final int snacksCalories;
 int totalCalories;

String calculateCalories(){
  totalCalories = breakfastCalories+lunchCalories+dinnerCalories+snacksCalories;
  return totalCalories.toString();
}
}