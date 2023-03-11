

    //-------In Dart there is no Primary Data type. As every single data type is an object here.-------//

void main() {

   int number = 7;
   int result = 2;

   print(number);
   print(result);

   print (result+number);  



   //Datatypes
   
   int age=18;
   double price = 12.7;
   
   //----new Datatype never seen before----//
   //------num the mixture of int and double. It is the parent of both them-----//
   num size = 32.1;

   bool doILoveDart = true;
   
   //-----Here String is capital S-----//
   String name = "Istiaq Ahmed";
   
   //----New for me. Similar as Array----//
   List prices =[12,10,32];

     /**
   * ! Rules for naming variables
   * - Variable name can consist of letter and alphabets.
   * - Keywords are not allowed to use as a variable name.
   * - Blank spaces are not allowed in variable name.
   * - First character of variable should always be alphabet and cannot be digit.
   * - Variable name are case sensitive
   * - Special characters like #, $ are not allowed 
  */

   //-----Type Safety-------//

  String myName = "Istiaq Ahmed";
  // myName = 3; //---->>error

  num fee = 10;
  //-----we can change this one. As it is a mixture of both int and double-----//
  fee = 7.7; //no error

  //---- declaring variable without mentioning datatype----//
  var weight = 3.14;
  // weight = "car"; //----->> error

 //----- value change no error------//
  dynamic weight2 = 3.14; 
  weight2 = 'car'; //----->> no error


   //! CONSTANTS
  /**
   * To define constant variables we use 2 keywords
   * const & final
   */
 

//* compile-time constant
  const constantValue = 7; //---when we know the value beforehand---//
  // constantValue = 3; //---->> error

//* runtime constant
  final currentDay = DateTime.now().toUtc().toString();
  print('Today is: ' +currentDay);
  

}