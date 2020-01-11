import "dart:io";

main()
{
  int inputNumber = 0;

  print("Input Number: ");
  String userInput = stdin.readLineSync();

  try {
    inputNumber = int.tryParse(userInput); 

    if (inputNumber == 0) 
      print('Input harus lebih besar 0');

    for(int i=0; i < inputNumber; i++) {
      for(int j=0; j <= i; j++) {
        stdout.write('*');
      }
      stdout.write('\n');
    }
  }
  on FormatException {
    print ('Input harus angka');
  }
  on Exception {
   print ('Input harus angka'); 
  }
}