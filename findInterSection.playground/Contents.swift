import UIKit
import Foundation

let strArr: [String] = ["1, 3, 4, 7, 13", "1, 2, 4, 13, 15"]

func FindIntersection(_ strArr: [String]) -> String {

    let firstArray = strArr[0].components(separatedBy: ",")
    let secondArray = strArr[1].components(separatedBy: ",")
    var output = [String]()
    
    for element in firstArray {
        if secondArray.contains(element){
            output.append(element)
        }
    }
    //print(output.joined(separator: ","))
    return output.joined(separator: ",")
    

}
