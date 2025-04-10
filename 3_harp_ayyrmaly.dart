void main(){
  String san='4df64dd5d23gbfg';
  String sanlar='';
  
  int ascii=0;
  String bosh='';
  for (int i=0; i<san.length; i++){
     ascii= san.codeUnitAt(i);
    // if (((97 <= ascii) && (ascii<= 122)) || ((65<=ascii) &&(ascii<=90))){
    // sanlar=sanlar +bosh;
    // }
    if ((48<=ascii) && (ascii<=57)){
   sanlar = sanlar + san[i];
    }
  }
    print('$sanlar');
  // double? dine_san =double.tryParse(sanlar);
  // print(dine_san?.toStringAsFixed(2));





  
}