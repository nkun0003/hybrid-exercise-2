import 'package:exercise_2/lucky.dart'; // Here importing the Lucky class from lib folder

void main(List<String> arguments) {
  // Checking if any names are passed as arguments
  if (arguments.isEmpty) {
    print('Please provide a list of names.');
    return; // Exit the program if no arguments are provided
  }

  // Looping through each name passed as a command-line argument
  for (String name in arguments) {
    // Capitalizing the first letter of the name and keep the rest lowercase
    String capitalized =
        name[0].toUpperCase() + name.substring(1).toLowerCase();

    // Here creating an instance of the Lucky class
    Lucky luckyInstance = Lucky();

    // Print the greeting message with the capitalized name and lucky number
    print(
        'Hello $capitalized. Your lucky number is ${luckyInstance.luckyNumber}.');
  }
}
