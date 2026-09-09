void main(List<String> args) {
  sum(a, b)=> a+b;
  print(sum(1,2));
makeTusk(doSomething);

num summ(num a, num b) => a+b;
num diff(num a, num b) => a-b;
double divide(num a, num b) => a/b;
num multply(num a, num b) => a*b;

print(calculate(1, 2, summ));
print(calculate(1, 2, diff));
print(calculate(1, 2, divide));
print(calculate(1, 2, multply));


}
num calculate (num a, num b , num Function( num a, num b)action) =>action(a, b);

void makeTusk(Function task){
  print('Programma ishlap Bashlady');
  task();
  print("Programma ishlemesini bes etdi");
}

void doSomething(){
  print('Salam');
}