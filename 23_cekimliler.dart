

cekimliler(String text){
  var soz = text.split('');
    int sany= 0;
    String cekimliler = 'aeiouy';
  for (var i = 0; i < text.length; i++) {
    if (cekimliler.contains(text[i])) {
      sany++;
    }
  }



    // if (element=='a' || element=='e' || element=='o'
    // || element=='u' ||element=='i' || element=='y')
    //   sany++;    
    // }
  print('Cekimlilerin sany ${sany}');
}


void main(){
  cekimliler('Lenovo');
}