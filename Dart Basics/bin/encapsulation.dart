import 'human.dart';

void main() {
  var human = Human();
  human.age = 11;
 /* human._name='Istiaq'; //---->>Error as its private
  print(human._name); */

  human.setName('Istiaq');
  print(human.getName()); 
}
