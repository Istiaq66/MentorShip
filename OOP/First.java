
// class object and constructor

class Car {

  String name;
  String color;
  int heigth, width;

  public Car(int h, int w) {
    heigth = h;
    width = w;
  }

  public Car() {
  }

}

// Inheritance
class Calc {

  int add(int a, int b) {
    return a + b;
  }

  // compile time polymorphism
  int add(int a, int b, int c) {
    return a + b + c;
  }

  // or
  double add(double a, int b, int c) {
    return a + b + c;
  }

}

class adCalc extends Calc {

  int multi(int a, int b) {
    return a * b;
  }

}

// Run time polymorphism

class Bird {
  void sound() {
    System.out.println("kichir michir");
  }
}

class Dog extends Bird {

  @Override
  void sound() {
    System.out.println("Bark Bark");
  }

}

// Encapsulation
class Money_bag {
  private int balance;

  int get_balance() {
    return balance;
  }

  void set_balance(int balance) {
    this.balance = balance;
  }

}



//Abstraction 

 abstract class Human{

  public abstract void  occupation();

}

class Student extends Human{
  @Override
  public void occupation() {
    System.out.println("Hi I'm a student");
  }
}



class First {
  public static void main(String args[]) {

    Car car = new Car();
    car.name = "Mazda";
    car.heigth = 1;
    car.width = 3;
    System.out.println(car.heigth + car.width);



    // Inheritance
    adCalc cal = new adCalc();
    int c;
    c = cal.add(5, 4);


    System.out.println(c);
    // compile time polymorphism
    c = cal.add(12, 13, 14);




    // Run time polymorphism
    Dog dog = new Dog();
    dog.sound();







    Money_bag money_bag = new Money_bag();
    // money_bag.balance; //error private tai

    money_bag.set_balance(100);
    System.out.println(money_bag.get_balance());



    //abstraction
    Student student = new Student();
    student.occupation();
  


  }
}