//Dart is a lexically scoped language. 
//Lexically scoped means that as we move downwards to the latest variable declaration,
// the variable value will depend on the innermost scope in which the variable is present.


//Global
 var myFriend = 'Ariful Islam';

void main(){
  var myName = 'Istiaq Ahmed';
 //local
  print(myName);
 //printInfo();
}

void printInfo(){
 // print(myName); ----->>> ERROR becuase the variable is locally declared
 print(myFriend);
}