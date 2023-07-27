//In Dart, strings are immutable by default,
// meaning that once you create a string, you cannot change its contents.
// However, if you need to make changes to a string, you can use a 'StringBuffer' object instead.

void main() {
  // Both are refering to same object in memory
  var name = "Istiaq";
  var name2 = "Istiaq";
  // Both are refering to same object in memory

  // Variables are changable (name,name2) but the objects (Istiaq) are immutable

  print(name == name2);

  var memoryAddress = identityHashCode(name);
  var memoryAddress2 = identityHashCode(name2);

  print('$memoryAddress $memoryAddress2');

  var myFriend = 'Ariful';

  print(identityHashCode(myFriend));

  myFriend = 'Ariful' + 'Islam'; // refering to a new object in memory

  print(identityHashCode(myFriend));

  // Making string Mutable//

  var buffer = new StringBuffer("Hello");
  buffer.write(" world!");
  var mutableString = buffer.toString();
  print(mutableString);
}


// Benefits of Immutabilty --->

/* 1 Saves Memory not creating new object everytime. We can create million variables pointing to the same object 
   2 If String were mutable then two variables pointing to the same object would be dangerous.
     Because if we change one of the variables value the other variables value will also be changed */