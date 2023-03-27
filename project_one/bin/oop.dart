//! OBJECT-ORIENTED PROGRAMMING (intro)
/*
OOP is a specific way of designing a program.
It allows us to think of the data in our program 
in terms of real-world objects, 
with both properties and behaviors
*/

//* class
// its a blue-print of an object
/*
A class is a user-defined type that describes 
what a certain type of object will contain and how it will behave
*/

//* Object
// Object -- an encapsulation of data along
//with functions that act upon that data.

/*
so if a class is a blueprint of a house, 
an object is the actual house
*/

//* defining classes

class Car{
  // the ? mark was added after we talked about null-safety
  // if you face errors just don't include it
   String? make;
   String? bodytype;

    //* object serialization
 // Serialization is the process of converting a
 //complex data object into a string.
  String toJson(){
    return '{"make":$make,"bodyType":$bodytype}';
  } 
  

  @override
  String toString() {
    return '$make\n' '$bodytype';
  }

}

void main(){
   //* creating an object
  var car = Car();

  // changing property values
  car.make = 'Ford';
  car.bodytype = 'SUV';

  // printing an object
  print(car);
  
  // adding JSON serialization
  print(car.toJson());
   
   //* cascade notation (..)
   // without cascade notation
   car.make='Mazda';
   car.bodytype='Sedan';

  // with cacade
  car= Car()
  ..make = 'Nissan'
  ..bodytype = 'SUV';
  
  print(car.toJson());
  
}