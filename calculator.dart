import 'dart:io';

double add (double a,double b) => a+b ;
double sub (double a,double b) => a -b ;
double multiply (double a ,double b) => a*b ;

void main(){
  while(true){
    print('\n==========Simple Calculator========');
    print("1. addition" );
    print("2. substraction" );
    print("3. multiply ");
    print("4. Exit " );
    
    stdout.write("choose :");
    String? choosen =stdin.readLineSync();
  switch(choosen){
    case "1":
    stdout.write("enter first number :");
    double num1 = double.parse(stdin.readLineSync()!);
    stdout.write("enter second number:");
    double num2 = double.parse(stdin.readLineSync()!);
    print("result = ${add(num1,num2)}");
    break;

    case "2" :
    stdout.write("enter first number :");
    double num1= double.parse(stdin.readLineSync()!);
    stdout.write("enter second number :");
    double num2 = double.parse(stdin.readLineSync()!);
    print("result : ${sub(num1,num2)}");
    break;

    case "3" :
    stdout.write("enter first number :");
    double num1 = double.parse(stdin.readLineSync()!);
    stdout.write("enter second number:");
    double num2 = double.parse(stdin.readLineSync()!);
    print("result : ${multiply(num1, num2)}");
    break;

    case "4" :
    print("good bye ");
    return;

    default :
    print ("invalid choice ");
  
  }

 }
}