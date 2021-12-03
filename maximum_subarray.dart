// https://leetcode.com/problems/maximum-subarray/

void main(){
  
  // print(sum([-2,1,-3,4,-1,2,1,-5,4]));
  // [4, -1, 2, 1] = 6
  // print(sum([1])); // 1
  // print(sum([5,4,-1,7,8])); // 23
  
  //[-1, -4, 0, -1, 1, 2, -3, 1]
  // print(sum1([-2,1,-3,4,-1,2,1,-5,4]));
  
  sum2([1,2,3]);
}

void func(List<int> list1){
  for (int t=0; t < intlist.length -1; t++) {
    int a = intlist[t];
    a += intlist[t+1];
    list1.add(a);
  }
 }

int? sum2(List<int> intlist) {
  
  for (int k=0; k < intlist.length-1; k++) {
    for (int j=1; j < intlist.length-1; j++){
      int b = intlist[j];
      b += intlist[j + 1];
      list1.add(b);
    }
  }
  
}

int? sum(List<int> intlist) {
  int a = intlist[0];
  List<int> l = [];
  for (int j=1; j < intlist.length; j++) {
    a += intlist[j];
    l.add(a);
  }
  l.sort((a,b) => a.compareTo(b));
  print(l);
  
  int b = intlist[1];
  for (int i=2; i < intlist.length; i++) {
    b += intlist[i];
    l.add(b);
  }
  print(l);
  
}

int? sum1(List<int> intlist) {
  
  int a = intlist.map((int i) => i).reduce((value, element) => value + element);
  print(a);
  
  List<List<int>> ll = [];
  for (int i=0; i < intlist.length -1; i++) {
    List<int> l = [intlist[i], intlist[i+1]];
    
  }
 
}
