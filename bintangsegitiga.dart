import "dart:io";

main()
{
  int inputNumber = 0;

  print("Input Number: ");
  String userInput = stdin.readLineSync();

  inputNumber = int.tryParse(userInput) ?? 0; 

  print('Start');
  if (inputNumber <= 0) 
    print('You must input a number or your number should greater than 0');

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