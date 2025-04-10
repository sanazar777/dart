void main(){
  String san='123456789';
  
  String san1= san[2]; //3
  String san2= san[0]; //1
  String san3= san[3];// 4
  String pi= '$san1.$san2$san3${san[1]}${san.substring(4)}';
 
  double? pi_san= double.tryParse(pi);
  print(pi_san);
  print(pi_san.runtimeType);
  

}