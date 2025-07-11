void main(){
  String myString='hello fahad';
  String capitlizedString= capitalizationText(myString);
  print(capitlizedString);
  
  //we can do simple 
    print(myString.substring(0,1).toUpperCase()+myString.substring(1));

    //convet all character capital in string
    print(myString.toUpperCase());

    //convert all character in lowercase
    print(myString.toLowerCase());

}


String capitalizationText(String txt){
  if(txt.isEmpty){
    return txt;
  }
  return txt.substring(0,1).toUpperCase()+txt.substring(1);
}