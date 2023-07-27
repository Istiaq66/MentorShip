void main() {
  String userInput = '3,1416';

  try {
    double number = double.parse(userInput);
    print('$number');
  }on FormatException catch(e){
      print('you have entered an invalid number!');
    print(e);
  }
   catch (e) {
    print('Something else happened');
  }
}
