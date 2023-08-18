
class BankAccount {
  //*---Encapsulation---//

  /* Encapsulation is a way to restrict the direct 
  access to some components of an object, so users 
  cannot access state values for all of the variables 
  of a particular object. Encapsulation can be used 
  to hide both data members and data functions or
  methods associated with an instantiated class 
  or object. */

  num _balance = 0;
  // by making it private user can't directly access the balance property//

  void deposit(num amount) {
    if (amount >= 0) {
      _balance = amount;
    } else {
      throw Exception("Amount can't be less than 0");
    }
  }

  void withdrow(num amount) {
    if (amount >= 0) {
      _balance = _balance - amount;
    } else if (amount > _balance) {
      throw Exception("Not Enough Balance");
    } else {
      throw Exception("Amount can't be less than 0");
    }
  }

  void getBalance() => print(_balance);
  //*---Encapsulation---//

  //*---Abstraction---//

  /* 
  Abstraction occurs when a programmer 
  hides any irrelevant data about an 
  object or an instantiated class to 
  reduce complexity and help users 
  interact with a program more efficiently.
  */

  BankAccount.open() {
    /* These method should not be accessed by user 
       as user don't need to know how a bank account
      is  openned 
    */

    _submitPapers();
    _approvalFromManager();
    _submitInDB();
  }

  void _submitPapers() {}
  void _approvalFromManager() {}
  void _submitInDB() {}

  //*---Abstraction---//

 
}
