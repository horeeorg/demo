import "dart:io";

main()
{
  var a ;
  int inputNumber = 0;

  print("Input Number: ");
  String userInput = stdin.readLineSync();

  try {

    inputNumber = int.tryParse(userInput); 

    print('Start');
    if (inputNumber == 0) 
      print('Input harus lebih besar 0');

    int h = 0;
    for(int i=0; i < inputNumber; i++) {
      for(int k=0; k < inputNumber - i; k++) {
        stdout.write(' ');
      }
      h++;
      for(int j=0;j < h + i;j++){
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