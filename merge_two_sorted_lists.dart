// https://leetcode.com/problems/merge-two-sorted-lists/
void main(){
  
  print(mergedList([1,2,4], [1,3,4])); // [1, 1, 2, 3, 4, 4]
  print(mergedList([], [])); // []
  print(mergedList([], [0])); // [0]
}

List<int>? mergedList(List<int> l1, List<int> l2){
  l1.addAll(l2.map((int i) => i)); 
  l1.sort();
  return l1;
}
