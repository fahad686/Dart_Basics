import 'dart:convert';
 
 void main(){

// a) jsonDecode

// Function: jsonDecode(String source)

// From package: dart:convert

// Purpose: Converts JSON string into Dart objects (Map or List).



    String jsonString='{"name":"Fahad","age":"27"}';

    print("json string: ${jsonString}");
    // json parse

    final parsedJson=jsonDecode(jsonString);

    print("parsed json: ${parsedJson}");


/////// Example from API response ///////
    // final Map<String, dynamic> body = jsonDecode(res.body);


// res.body → JSON string from API.

// jsonDecode(res.body) ;// Converts it into a Dart Map.



//////// Handle null coalecing ///////
    // String? nullableJsonString;

    //  final json=jsonDecode(nullableJsonString!); // This will throw an error if nullableJsonString is null.

    // final parsedNullableJson=jsonDecode(json ?? '{}'); // Safe way to handle null by providing a default empty JSON object.

    // print("parsed nullable json: ${parsedNullableJson}");
     
    //  final Map<String, dynamic> dataMap = body['data'] ?? {};
// If body['data'] is null, it will use an empty map {} instead.


// c) map() function on .entries

// Purpose: Transform every element of a list or map into a new value and return a new list.

// Example:

List<int> numbers = [1, 2, 3];
List<int> squared = numbers.map((num) => num * num).toList();
print(squared); // [1, 4, 9]

// list1 = dataMap.entries.map((e) {
//   final v = e.value as Map<String, dynamic>;
//   return {
//     'code': e.key,
//     'country': v['country']?.toString() ?? '',
//     'region': v['region']?.toString() ?? '',
//   };
// }).toList();
// dataMap.entries → gives a list of key-value pairs.

// Each entry e has:

// e.key → country code ("PK", "US", etc.)

// e.value → details of the country.

// Inside map, you transform each entry into a new Map<String, String> with just the fields you need.




////////// toList() //////////
// Purpose: Converts an Iterable (like the result of map()) into a List.
// d) toList()

// Purpose: Converts an iterable into a proper List.

// Example:

var names = {"Ali", "Sara", "John"};
var list = names.map((name) => name.toUpperCase()).toList();
print(list); // [ALI, SARA, JOHN]


// In your code:
// After map(), you use toList() because map() alone gives a lazy iterable.



 }