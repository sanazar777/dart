void main(){
  List bosh=[];
  List jubutSanlar=[];
  List takSanlar=[];
  int tjemi=0;
  int jjemi=0;
  
  for (var i = -5; i <=20; i++) {
    if (i%2==1) {
      takSanlar.add(i);      
    }
    
    else if (i%2==0) {
      jubutSanlar.add(i);      
    }
  }
    // print('$takSanlar');
    // print('$jubutSanlar');
    bosh.addAll(takSanlar);
    bosh.addAll(jubutSanlar);
    print('hemmesi $bosh');

    for(var j=1; j<= bosh.length; j++){
    //   print('j=$j');
      for (var i=0; i < bosh.length-j; i++){
    //     print('i=$i');
        int number1 = bosh[i];
        if (number1 > bosh[i+1]){
          bosh[i] = bosh[i+1];
          bosh[i+1] = number1;
        }
      }
      
    }
    print('tertiplenen $bosh');


  for(int taksan in takSanlar){
    tjemi +=taksan;
  }
 
  
  for(int jubutsan in jubutSanlar){
    jjemi+= jubutsan;
  }
  print('Täk sanlaryň jemi: $tjemi');
  print('Jübüt sanlaryň jemi: $jjemi');


  // for(var i=0; i<bosh.length; i++){
  //   if (i%5==0){
  //     bosh.removeAt(i);
  //   }
  // }
  // print(bosh );

  }
