import UIKit

func hasPalandimoreMutation(_ str: String) -> Bool{
    
    var unpairedValues: Set<Character> = []
    
    for character in str {
        if unpairedValues.contains(character){
            unpairedValues.remove(character)
        }else{
            unpairedValues.insert(character)
        }
    }
    
    return unpairedValues.count <= 1
}

var hey = "samith"
hasPalandimoreMutation(hey)
