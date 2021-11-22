// https://leetcode.com/problems/two-sum/

void main(){
  // (1) for loop
  List<int>? twosum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i+1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          return [i, j];
        }
      }
    }
    return null;
  }
  
//   print(twosum([2,7,11,15], 9));
//   print(twosum([3,2,4], 6));
//   print(twosum([3,3], 6));
//   print(twosum([1,2], 8));
  
  // (2) find complement
  List<int>? twosum1(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];
      if (nums.contains(complement)){
        int index = nums.indexOf(complement, i+1);
        return [i, index];
      }
    }
    return null;
  }
  
  print(twosum([2,7,11,15], 9)); // [0,1]
  print(twosum([3,2,4], 6)); // [1,2]
  print(twosum([3,3], 6)); // [0,1]
  print(twosum([1,2], 8)); // null
  
}
