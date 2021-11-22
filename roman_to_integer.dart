// https://leetcode.com/problems/roman-to-integer/
void main() {
  print(func("MCMXCIV"));
}

int func(String s){
  
  List<int?> list = s.split("").map((String l) {
    switch (l) {
      case "I": return 1; 
      case "V": return 5;
      case "X": return 10;
      case "L": return 50;
      case "C": return 100;
      case "D": return 500;
      case "M": return 1000;
    }
  }).toList();
  for (int i = 0; i < list.length-1; i++){
    if (list[i+1]! > list[i]!) {
      list.replaceRange(i, i+2, [list[i+1]!-list[i]!]);
    }
  }
  int newInt = 0;
  list.forEach((int? i) => newInt += i!);
  return newInt;
}
