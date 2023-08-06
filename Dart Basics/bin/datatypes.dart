//! OPERATIONS ON MIXED TYPES
int integerValue = 3;
double doubleValue = 2;
var operationResult = integerValue * doubleValue;

void main() {
  //print('The result is: ' + operationResult.toString());
  //print('The result\'s type is: ' + operationResult.runtimeType.toString());


//------TYPE CASTING-------//
  num value = 7;
//print(value.isEven);//--->error
  var valueInteger = value as int;
  print(value.isEven);
//------TYPE CASTING-------//




  //-----Type Conversion-----//
  int age = 30;
  String ageString = age.toString();

  String price = '30';
  double priceDouble = double.parse(price);
  int priceInteger = int.parse(price);
  //-----Type Conversion-----//
}
