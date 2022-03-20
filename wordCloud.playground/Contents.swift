import UIKit

var wordset = "After beating the eggs Dana read the next step"

// split the words in string
var wordmap = wordset.split(separator: " ")
print(wordmap)

var wordsTocount: [String:Int] = [:]

func addWordsToDic(_ words: String) {
    if let count = wordsTocount[words]{
        wordsTocount[words] = count + 1
    } else {
        wordsTocount[words] = 1
    }
}
