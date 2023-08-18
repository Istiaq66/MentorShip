import 'bank_account.dart';
import 'widget.dart';

void main() {
  //*---Encapsulation---//
  BankAccount bankAccount = BankAccount.open();

  bankAccount.getBalance();
  bankAccount.deposit(100);
  bankAccount.getBalance();
  bankAccount.withdrow(50);
  bankAccount.getBalance();
  //*---Encapsulation---//

//*---Polimorphism---//
  PKButton button = PKButton();
  button.text = 'Istiaq';
  button.enbled();
  button.disable();
  print(button.text);

  renderComponent(PKButton());
  renderComponent(PKtext());
  //*---Polimorphism---//
}

renderComponent(PKWidget pkWidget) {
  pkWidget.render();
}
