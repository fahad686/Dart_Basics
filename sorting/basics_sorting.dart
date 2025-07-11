/* Simple Hello, World! program */
void main(){
 List<int> numbers = [5, 2, 9, 1, 7];

  numbers.sort(); // Ascending
  print('Ascending: $numbers');
  
  // Decending
   numbers.sort((a,b)=>b.compareTo(a));
   print('Decending: $numbers');
    
    
    //Now I want to sort custom object
    List<User> users=[
      User('Ali',24),
      User('Fahad',27),
      User('Mehtab',22),
    ];

    //Ascending
   users.sort((a,b)=>a.age.compareTo(b.age));
   for(int i=0;i<users.length;i++){
    print("Name: ${users[i].name} - Age: ${users[i].age}");
   }
    
}




//Custom object sort in ascending by age
class User{
    String name;
    int age;
     
    User(this.name,this.age);
    
}
