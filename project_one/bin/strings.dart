void main() {
  var first = 'one';
  var second = 'one';
  var third = "one's one";

//* Concatenation
  var fourth = first + second + third;
  print(fourth);

  var fifth = 'the fifth ';
  first += fourth;
  print(fifth);

//* Interpolation---> String interpolation is the process of
// inserting variable values into placeholders in a string literal.
// To concatenate strings in Dart, we can utilize string interpolation.
// We use the ＄{} symbol to implement string interpolation in your code. *//

  var name = "Istiaq";
  print('My name is $name');

  var age = 2023 - 1998;
  print('My age is $age');

  //* Multi-line strings ---> If we want to print multiple lines in a structured format*//

  var longText = '''
ChatGPT is an artificial intelligence chatbot 
developed by OpenAI and launched in November 2022.
It is built on top of OpenAI's GPT-3 family of large
language models and has been fine-tuned \n
(an approach to transfer learning) using both
supervised and reinforcement learning techniques.
''';

  print(longText);

  var upperCase = name.toUpperCase();
  print(upperCase);
}
