//Collections

void main() {
//List(Array)

List<String> fruits = ['apple', 'banana', 'orange', 'kiwi', 'mango'];


//In this example, we're creating a list called fruits that 
//contains five strings: "apple", "banana", "orange", "kiwi", and "mango". 
//The <String> syntax is used to specify the type of the elements in the list as strings.

List<int> numbers = [];
numbers.add(1);
numbers.add(2);
numbers.add(3);
//In this example, we're creating an empty list called numbers that contains integers. We then use the .add() method to add the integers 1, 2, and 3 to the list.






  List name = ['Jack', 'Jill', 10, 100];

  // List <String> names = ['Jack','Jill',10,100];

  //var name2 = name;
  //We can use spread operator to copy the full list

  var name2 = [...name];

  for (var n in name2) print(n);

//Set

  var helogens = {'fluorine', 'chlorine', 'fluorine'};

  for (var x in helogens) {
    // print(helogens);
    print(x);
  }

  // empty set
  var halogens = <String>{};
  Set<String> names = {};

  print(names.runtimeType);

  // Map

  var gift = {
    // Key   :   Value
    'First'  : 'partidge',
    'Second' : 'turtledoves',
    '100'    : 'golden rings'
  };

  print(gift['First']);

// Another way
  var students = Map();
  students ['1'] ='Istiaq';
  students ['2'] ='Tanveer';
  students ['Dhaka'] ='Siam';

 print(students['2']);



}
