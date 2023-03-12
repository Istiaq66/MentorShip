//! CONTROL FLOW
void main() {
  //* if statement
  /*
  if statement, which allows the program to do something
  only if a certain condition is true
   */
  const age = 15;
  if (age < 18) {
    print('You are underage!');
  }

  //* else clause
  if (age >= 21) {
    print('You can drink!');
  } else {
    print('You cannot drink!');
  }

  //* else-if statements
  if (age > 18 && age < 21) {
    print('You are of age, but cannot drink! :(');
  } else if (age > 18 && age >= 21) {
    print('You are of age, and can drink! :)');
  } else {
    print('just drink water my Kid');
  }

  //* variable scope
  // Where is the variable visible and usable
  if (age > 18) {
    const name = 'Santos';
    print('Hello $name, you are of legal age1');
  }
  // print("Hello, $name");//------->>error (as the variable is defined inside if statement)

  //* ternary conditional operator
  // (condition) ? valueIfTrue : valueIfFalse;
  age > 18 ? print('you are of age') : print('you are not of age');
  const canIVote = age > 15 ? 'Yes' : 'No';
  print('Cant I vote? $canIVote');

  //* switch statement
  /*
  switch statement is an alternate way to handle control flow,
  especially for multiple conditions
  !Structure
  switch (variable) {
  case value1:
    // code
    break;
  case value2:
    // code
    break;
    ...
  default:
    // code
   }
  */
   
   const menuItemNumber=2;

   switch(menuItemNumber){
    case 1:
    print('Open profile page');
    break;
    case 2:
    print('Open settings page');
    break;
    default:
    print('Invalid option');

   }

  //* enums (Enumerated types)
  // You can use enums to define your own type with
  // a finite number of options.
  
   const item = MenuItem.settings;
   switch(item){
    case MenuItem.profile:
    print('Open profile page');
    break;
    case MenuItem.settings:
    print('Open settings page');
    break;
    default:
    print('Invalid option');
  }


}
//custom item
enum MenuItem{
  profile,
  settings;
}