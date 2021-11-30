// https://leetcode.com/problems/valid-parentheses/
void main(){

  print(isValid2("()")); // true
  print(isValid2("()[]{}")); // true
  print(isValid2("([)]")); // false
  print(isValid2("(]")); // false
  print(isValid2("{[])}")); // false
  print(isValid2("{[]}")); // true
  print(isValid2("([}]")); // false
  print(isValid2(")}{}")); // false
  print(isValid2("{[)]}()")); // false
  
}

bool? isValid2(String s){
  List slist = s.split("");
  int a = slist.lastIndexOf("(");
  int aa = slist.indexOf(")");
  int b = slist.lastIndexOf("[");
  int bb = slist.indexOf("]");
  int c = slist.lastIndexOf("{");
  int cc = slist.indexOf("}");
 
  if (a > aa || b > bb || c > cc) {
    return false;
  }
  if (a > b && a > c) {
    if (slist.elementAt(a+1) != ")") {
      return false;
    } else {
      return true;
    }
  } else if (b > a && b > c) {
    if (slist.elementAt(b+1) != "]") {
      return false;
    } else {
      return true;
    }
  } else if (c > a && c > b) {
    if (slist.elementAt(c+1) != "}") {
      return false;
    } else {
      return true;
    }
  }
  
}
