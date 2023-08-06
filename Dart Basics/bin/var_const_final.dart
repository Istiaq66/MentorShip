void main() {
  var someValue1 = 10;
  final someValue2 = 10;
  const someValue3 = 10;

  print(someValue1);
  print(someValue2);
  print(someValue3);

  someValue1 = 101; //* var can be changed
  // someValue2 = 101; // !The final variable 'someValue2' can only be set once
  // someValue3 = 101; //!Constant variables can't be assigned a value.

  print(someValue1);
  print(someValue2);
  print(someValue3);

  //! final vs const //!
  //final is a runtime constant//
  //const is a compile time constant//

  final time1 = DateTime.now();
// const time2 = DateTime.now();
  //!  Const variables must be initialized with a constant value.
  //!  Try changing the initializer to be a constant

  print(time1);
}
