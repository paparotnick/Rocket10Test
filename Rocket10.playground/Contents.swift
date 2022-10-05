import Foundation

func trimString(_ stringToTrim: String) -> String {
    var result = ""
    var charsCount = 0
    for (index, char) in stringToTrim.enumerated() {
        if index == 0 {
            result.append(char)
            charsCount = 1
            continue
        }
        
        if stringToTrim[index-1] == char {
            charsCount += 1
        } else {
            result.append(String(charsCount))
            result.append(char)
            charsCount = 1
        }
    }
    result.append(String(charsCount))
    return result.count < stringToTrim.count ? result : stringToTrim
}

extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
