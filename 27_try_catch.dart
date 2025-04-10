void main(){
  
  List<String> texts = ['Jack', 'Meret', 'Ylham'];

  // try {
  //   print(texts[4]);
  // }on RangeError catch (e) {
  //   print('Error: aralyk ýok ${e}');
  // }on StateError catch (e){
  //   print('Error: Element yok ${e.message}');
  // }catch (e){
  //   print('Näsazlyk: ${e.runtimeType},, ${e.toString()}');
  // }

  int mumkincilik = 0;
  for (var i = 0; i < 4; i++) {
    if (mumkincilik == 3) {
      print('Mumkinçilik ýok!');
    }else{
      try{
        print(texts[3]);
      }on RangeError catch (e){
        print('Error: aralyk ýok. ${e.name}');
      }on StateError catch (e) {
        print('Error: element ýok. ${e.message}');
      }catch(e){
        print('Näsazlyk: ${e.runtimeType}, ${e.toString()}');
      }finally{
        print('Gözleg tamamlandy!');
        mumkincilik++;
      }
    }
  }


} 