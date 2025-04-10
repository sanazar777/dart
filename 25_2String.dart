ulySoz (String sozlem){
  List<String> sozler = sozlem.split(' ');
  String max = sozler.reduce((a,b)=>(a.length>b.length) ?  a : b);

  // String max = sozler.reduce((a,b){
  //   if(a.length>b.length){
  //     return a;
  //   }else{
  //     return b;
  //   }
  // });
  
  print(max);
}


ikiSoz(String, str1, str2){
  int denHarp = 0;
 for (var i = 0; i < str2.length; i++) {
   if (str1.contains(str2[i])) {
     denHarp++;
   }
 }
   if (str1.length == denHarp) {
     print('Harplar den');
   }else{
    print('Den dal');
   }

}



void main(){
 ulySoz('Men Muhammet Bayramgeldiyew');
 ikiSoz(String, 'galam', 'malag');
}