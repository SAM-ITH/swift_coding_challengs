import UIKit

func reverseString(_ str: inout[String]){
    
    guard str.count > 0 else {
        return
    }
    
    var leftIndex = 0
    var rightIndex = str.count - 1
    
    while leftIndex < rightIndex {
        // swap characters
        let leftChar = str[leftIndex]
        let rightChar = str[rightIndex]
        
            str[leftIndex] = rightChar
            str[rightIndex] = leftChar
        
        leftIndex += 1
        rightIndex -= 1
    }
    
    print("long way \(str)")
}

var charin = ["s","a","m","i","t","h"]
reverseString(&charin)


