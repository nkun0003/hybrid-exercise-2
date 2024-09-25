import 'dart:io'; // accessing environment variables
import 'dart:math'; // generating random numbers

class Lucky {
  late int
      luckyNumber; // This field is initialized later in the constructor, that's the reason i used "late" keyword.

  // Constructor
  Lucky() {
    // Here reading environment variables MIN and MAX, and convert them from Strings to int
    int min = int.parse(
        Platform.environment['MIN']!); // '!' asserts that MIN is not null
    int max = int.parse(Platform.environment['MAX']!);

    // Here i am assigning value to the empty variable i created above "luckyNumber " Generating a random integer between MIN and MAX
    luckyNumber =
        min + Random().nextInt(max - min + 1); // Initializing the luckyNumber
  }
}
