void main() {
  List<int> list1 = [5, 1, 9, 6, 2, 8];
  int target = 5;

  // Sort the list before binary search
  list1.sort();

  print("Sorted list: $list1");
  print("Target index: ${binarySearch(list1, target)}");
}

int binarySearch(List<int> list, int target) {
  int left = 0;
  int right = list.length - 1;

  while (left <= right) {
    int mid = left + ((right - left) ~/ 2);

    if (list[mid] == target) return mid;
    if (list[mid] < target)
      left = mid + 1;
    else
      right = mid - 1;
  }
  return -1;
}
