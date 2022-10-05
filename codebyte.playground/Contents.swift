import UIKit

func StringReduction(_ str: String) -> Int {
    print("Initial String ", str)
    if isStringReducted(str) {
        return str.count
    }
    
    for (index, char) in str.enumerated() {
        if (index + 1 < str.count) && (str[index+1] != char) {
            print("Index ", index)
            let prefix = str.prefix(index)
            print("Prefix ", prefix)
            let postfix = str.suffix(str.count - index - 2)
            print("Postfix ", postfix)
            let middle = getChar(char1: char, char2: str[index+1])
            print("Middle ", middle)
            return StringReduction(prefix + middle + postfix)
        }
    }
    
    return str.count
}
            

func getChar(char1: Character, char2: Character) -> String {
  if (char1 == "a" && char2 == "b") || (char1 == "b" && char2 == "a") {return "c"}
     
  if (char1 == "a" && char2 == "c") || (char1 == "c" && char2 == "a") {return "b"}
    
  if (char1 == "b" && char2 == "c") || (char1 == "c" && char2 == "b") {return "a"}
    
  return "\(char1)\(char2)"
}

func isStringReducted(_ str: String) -> Bool {
  for (index, char) in str.enumerated() {
    if (index+1 < str.count) && (str[index+1] != char) {
      return false
    }
  }
  return true
}

extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}

print(StringReduction("abcabc"));

