void main(List<String> args) {
  var sanya = Human('Nazar', 1.76, 24);
  var deska = Adam(ady: 'ady', yasy: 24, boy: 2.98);
    var deskauly = Adam(ady: 'ady', yasy: 24, boy: 1.99);
        var Artistlar = Artist(ady: 'ady', yasy: 24, boy: 1.99, style: 'Hudoznik');
        print(Artistlar);
        


  print(deska.haysyUly(deskauly));
print(sanya);
print(deska);
deska.grewUp(5);
print(deska);
print(sanya.ady);

sanya.yasy = 24;
print(sanya.ady);

}

class Human{
Human(this.ady, this.boyy, this.yasy);
int yasy;
final  String ady;
double boyy;


}

class Adam{
Adam({required this.ady, required this.yasy, required this.boy });
  final String ady;
  int yasy;
  double boy;
  
  @override
  String toString() {
return 'Bul adamyn ady: $ady, onun yashy: $yasy, onun boyy:$boy';
  }
void grewUp(int years){
yasy +=years;
  }
  
bool haysyUly(Adam haysyuly){
 return boy > haysyuly.boy;
}

}

class Artist extends Adam{
  Artist({required super.ady, required super.yasy, required super.boy, required this.style} );

  String style;
  @override
  String toString() {
return 'Bul Suratchy ady: $ady, onun yashy: $yasy, onun boyy:$boy, ol $style';
  }

}






