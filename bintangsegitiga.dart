import "dart:io";

main()
{
  int inputNumber = 0;

  print("Input Number: ");
  String userInput = stdin.readLineSync();

  try {

    inputNumber = int.tryParse(userInput); 

    print('Start');
    if (inputNumber == 0) 
      print('Input harus lebih besar 0');

    int helper = 0;
    for(int lineCount=0; lineCount < inputNumber; lineCount++) {
      
      for(int spaceCount=0; spaceCount < inputNumber - lineCount; spaceCount++) {
        stdout.write(' ');
      }

      helper++;
      for(int starCount=0; starCount < helper + lineCount; starCount++){
        stdout.write('*');
      }
      
      stdout.write('\n');
    }
  }
  on FormatException {
    print ('Your input should be number');
  }
}