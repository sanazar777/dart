    void main()  {
  List string_list = [];
  List int_list = [];
  List bool_list=[];
  List myList = [12,123,4655,1,true,'asd', 2];
  for (var i = 0; i < myList.length; i++) {
    if (myList[i].runtimeType== int) {
      int_list.add(myList[i]);
      // print(int_list);
    }
   else if (myList[i].runtimeType== String) {
      string_list.add(myList[i]);
      // print(int_list);
    }
    else if (myList[i].runtimeType== bool) {
      bool_list.add(myList[i]);
      // print(bool_list);
    } 
   }
   print(string_list);
   print(int_list);
   print(bool_list); 
  }
