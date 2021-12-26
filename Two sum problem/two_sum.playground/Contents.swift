import UIKit

// return a boolena if there are two numbers in the array that equal a targeted sum

let numb = [2,4,6,3,1,7]

// 1 - brute force - Nested for loop, compare all the numbers
func bruteForceTwoSum(array: [Int], sum: Int) -> Bool{
    
    for i in 0..<array.count{
    
        for j in 0..<array.count where j != i {
            
            if array[i] + array[j] == sum {
                print("true: \(array[i]) + \(array[j])")
            }
        }
    }
    
    return false
}

bruteForceTwoSum(array: numb, sum: 10)


// 2 - binary search for the compliment


// 3 - Move pointer from either end - linear
