//https://leetcode.com/problems/length-of-last-word/

void main(){
  
  lastWordLength("Hello World"); // 5
  lastWordLength("   fly me   to   the moon  "); // 4
  lastWordLength("luffy is still joyboy"); // 6
  
}

void lastWordLength(String s){
  List<int> ss = [...s.trim().codeUnits];
  ss.removeRange(0, ss.lastIndexOf(32)+1);
  print(ss.length);
}
