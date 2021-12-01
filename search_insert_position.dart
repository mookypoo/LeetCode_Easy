// https://leetcode.com/problems/search-insert-position/
void main(){
  
  print(position([1,3,5,6], 5)); // 2
  print(position([1,3,5,6], 2)); // 1
  print(position([1,3,5,6], 7)); // 4
  print(position([1,3,5,6], 0)); // 0
  print(position([1], 0)); // 0
  print(position([-3, -2, 0, 10, 15], 14)); // 4
  print(position([-3, -2, 0, 10, 15], -6)); // 0
  print(position([-3, -2, 0, 10, 15], 19)); //5
  
}

int? position(List<int> intlist, int target){
  if (intlist.contains(target)){
    return intlist.indexOf(target);
  } else {
    if (target > intlist[intlist.length-1]){
      return intlist.length;
    } else if (target < intlist[0]){
      return 0;
    } else {
      int nextIndex = intlist.indexOf(intlist.firstWhere((int i) => i > target));
      return nextIndex;
    }
  }
}
