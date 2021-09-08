import 'Dart:io';

void main() {
  int x, numFibo;
	print('Calculo de numeros Fibonacci\nIngrese el numero a calcular: ');
  x=int.tryParse(stdin.readLineSync());
  if(x==null){
    print('No ingresaste un numero :c');
  }else{
    numFibo=fibo(x);
  print('Fibonacci de $x: $numFibo');
  }
}

int fibo(int n){
  if(n==0){
    return 0;
  } else if(n==1){
    return 1;
  } else{
    return fibo(n-1)+fibo(n-2);
  }
}