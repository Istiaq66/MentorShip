// Poly -->Many & Morphism--> Behaviour

//Compile time

class Math {
 

  /*In Dart, you cannot have two methods with the same name and parameter types,
   even if they have different numbers of parameters.
   This is because Dart uses the method signature (the name and parameter types) 
   to determine which method to call, and having multiple methods with the same 
   signature would create an ambiguity.
  
    num add(int a, int b) {
    return a + b;
  }
  
   num add(int a,int b,int c){  --->>error                        
  return a+b+c;
  }
  
  */


 
    num add(int a, int b, [int? c]) {
    if (c != null) {
      return a + b + c;
    } else {
      return a + b;
    }

}


}



//Runtime
class Animal {
  String? name;
  String? color;

  eat() {
    print('munch');
  }
}

class Dog extends Animal {
  int? breed;

  @override
  eat() {
    print('chomp chomp');
  }
}

void main() {
  var dog = Dog();
  dog.eat();
}



