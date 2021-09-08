import 'Dart:io';

void main() {
  int x, numFact;
	print('Calculo de numero Factorial\nIngrese el numero a calcular: ');
  x=int.tryParse(stdin.readLineSync());
  if(x==null){
    print('No ingresaste un numero :c');
  }else{
    numFact=facto(x);
    print('Factorial de $x: $numFact');
  }
}

int facto(int n){
  if(n==0 || n==1){
    return 1;
  } else{
    return n*facto(n-1);
  }
}