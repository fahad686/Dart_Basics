List<int> findAllMatchingIndices(List<int> list, int target) {
  List<int> indices = [];

  for (int i = 0; i < list.length; i++) {
    if (list[i] == target) {
      indices.add(i); // store the index of match
    }
  }

  return indices;
}


List<int> findAllMatchingValues(List<int> list, int target) {
  return list.where((element) => element == target).toList();
}

void main() {
  List<int> numbers = [1, 2, 3, 2, 4, 2, 5];
  int target = 5;

  List<int> result = findAllMatchingIndices(numbers, target);
  List<int> value=findAllMatchingValues(numbers, target);
  print("Target found at indices: $result\n values of list:$value");

//Check if Lists Have Same Elements, Order Doesn’t Matter
List<int> a = [1, 2, 3];
  List<int> b = [3, 2, 1];

  a.sort();
  b.sort();

  bool same = a.toString() == b.toString();
  print("Same elements regardless of order: $same");
}
