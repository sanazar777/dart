void main(){
// String star='';
// for (int i = 0; i < 11; i++) {
//   star=star +'*';
//   print(star);
  // }
  int boslyk=10;
  int yyldyz = 0;
  for (int i = 1; i < 20; i=i+2) {
    boslyk= (boslyk) - 1 ;
    yyldyz = i;
    print('${' ' * boslyk}${"*"*yyldyz}');    
  }
  // print(yyldyz);
  for (var l = 0; l < 4; l++) {
    print('${' ' * ((yyldyz-4)~/2)}${'*****'}');
  }



}