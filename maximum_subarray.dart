// https://leetcode.com/problems/maximum-subarray/

void main(){

  sum1([1,2,3,4]); 
  //   maximum subarray: index 0 ~ 3
  //   sum: 10
  sum1([-2,1,-3,4,-1,2,1,-5,4]);
  // maximum subarray: index 3 ~ 6
  // sum: 6
  sum1([1]);
//   maximum subarray: index 0
//   sum: 1
  sum1([5,4,-1,7,8]);
//   maximum subarray: index 0 ~ 4
//   sum: 23
}

class IndexSumMap {
  String indexRange;
  int sum;
  
  IndexSumMap({required this.indexRange, required this.sum});
}

void sum1(List<int> intlist) {

  List<IndexSumMap> ll = [];
  if (intlist.length == 1) {
    print("maximum subarray: index 0");
    print("sum: ${intlist[0]}");
    return;
  }
  for (int j=0; j < intlist.length-1; j++) {
    intlist.getRange(j, intlist.length).reduce((v, e) {
      int sum = v + e;
      int index = intlist.indexWhere((int i) => i == e, j);
      ll.add(IndexSumMap(indexRange: "index $j ~ $index", sum: sum));
      return v + e;
    });
  }
  
  ll.sort((IndexSumMap a, IndexSumMap b) => a.sum.compareTo(b.sum));
  print("maximum subarray: ${ll[ll.length-1].indexRange}");
  print("sum: ${ll[ll.length-1].sum}");
   
}

