import UIKit
func VowelCount(_ str: String) -> Int{
let arr = ["u","i","e","a","o"]
var vowelCount = 0
str.forEach {
   if arr.contains($0.lowercased()) {
      vowelCount += 1
   }
}
return vowelCount
}
var hey = "hello"
VowelCount(hey)
