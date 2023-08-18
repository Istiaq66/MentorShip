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

// Abstraction
abstract class Human {
  int age;
  String name;

  public abstract void occupation();
}

// interface
interface HumanBehaviour {
  boolean angry = true; 
  //*  every field in a interface has to be static final so we have to declare it 
  //*  and same value is aplied for all objects of that class 
  //*  By default every method in a interface is public abstract --> no need to mention

   void behaviour();
}

interface Child{
   void run();
}

class Student extends Human implements HumanBehaviour,Child { 
  //!  We can implement as many interfaces we want
  //!  but we can extend only one abstract class

  @Override
  public void occupation() {
    System.out.println("Hi I'm a student");
  }

  @Override
  public void behaviour() {
    System.out.println("I'm Angry");
  }

  @Override
  public void run() {
  System.out.println("I'm Running");
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

    // abstraction
    Student student = new Student();
    student.occupation();

  }
}