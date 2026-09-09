void main() {
  try {
    String text = "123a";
    int san = int.parse(text);

    print("San: $san");
  } catch (e) {
    print("San okap bolmady: $e");
  }

}


 void tryCatv(){
  try{

  String text = "123a";
  int san = int.parse(text);
  print("San: $san");
 } catch(e){
  print("San okap bolmady: $e");
 }
  }