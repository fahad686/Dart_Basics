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
      print("Ascending Ordre");
   users.sort((a,b)=>a.age.compareTo(b.age));
   for(int i=0;i<users.length;i++){
    print("Name: ${users[i].name} - Age: ${users[i].age}");
   }
    
    //Descending order
          print("Descening Ordre");
    users.sort((a,b)=>b.age.compareTo(a.age));
    for(var user in users){
      print('Name:${user.name} - age: ${user.age}');

    }


    /*Output 
    Ascending: [1, 2, 5, 7, 9]
Decending: [9, 7, 5, 2, 1]
Ascending Ordre
Name: Mehtab - Age: 22
Name: Ali - Age: 24
Name: Fahad - Age: 27
Descening Ordre
Name:Fahad - age: 27
Name:Ali - age: 24
Name:Mehtab - age: 22
*/

 List<String> fruits = ['banana', 'apple', 'orange', 'grape'];

  // Sort in ascending order (default)
  fruits.sort();
  print('Ascending order: $fruits'); // Output: [apple, banana, grape, orange]

  // Sort in descending order
  fruits.sort((a, b) => b.compareTo(a));
  print('Descending order: $fruits'); // Output: [orange, grape, banana, apple]

  // Sort by string length
  fruits.sort((a, b) => a.length.compareTo(b.length));
  print('Sorted by length: $fruits'); // Output: [grape, apple, banana, orange]

 // Sort by string length
  fruits.sort((a, b) => b.length.compareTo(a.length));
  print('Sorted by length: $fruits'); // Output: [orange, banana, grape, apple]
}




//Custom object sort in ascending by age
class User{
    String name;
    int age;
     
    User(this.name,this.age);
    
}
