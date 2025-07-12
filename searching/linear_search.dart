

int linearSearch(List<int> list, int target) {
  for (int i = 0; i < list.length; i++) {
    print("time :$i");
    if (list[i] == target) {
      return i; // Found
    }
  }
  return -1; // Not found
}

void main(){
  //Linear Search
  List<int> list=[9,6,4,3,8];
  int target=3;
  print("target : ${linearSearch(list, target)}");
}
