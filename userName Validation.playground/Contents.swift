import UIKit
import Foundation

var str = "aa"

func CodelandUsernameValidation(_ str: String) -> Bool {

  // code goes here
  // Note: feel free to modify the return type of this function
 let arraystr = Array(str)
    if arraystr.count >= 4 && arraystr.count <= 25 {
        if arraystr.last != "_" {
            for char in arraystr {
                if char.isLetter || char.isNumber || char == "_"{
                    if let firstLetter = arraystr.first?.isLetter{
                        if firstLetter == true {
                            return true
                        }
                    }
                }
            }
        }
    }
    return false
}


