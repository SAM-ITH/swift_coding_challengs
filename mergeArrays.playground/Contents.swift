import UIKit

let myArray = [3, 4, 6, 10, 11, 15]
let alicesArray = [1, 5, 8, 12, 14, 19]

var mergeArr = myArray + alicesArray

var sortedArr = mergeArr.sorted()

print(sortedArr)

func mergeSortedArrays (_ myArray: [Int], _ alicesArray: [Int]) -> [Int]{
    return  (myArray+alicesArray).sorted()
}

print("simple in function \(mergeSortedArrays(myArray, alicesArray))")

