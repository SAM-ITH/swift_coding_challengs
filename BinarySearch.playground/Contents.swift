import UIKit

let numbers = [1,4, 6, 9, 11, 13, 16, 18, 20, 21, 22, 33, 45]

func binarySearch(array: [Int], key: Int) -> Bool {
    
    if array.count == 0 {return false}
    
    let minIndex = 0
    let maxIndex = array.count - 1
    let midIndex = maxIndex/2
    let midValue = array[midIndex]
    
    if key < array[minIndex] || key > array[maxIndex] {
        print("\(key) value is not in the scope")
        return false
    }
    
    if key > midValue {
        let slice = Array(array[midIndex + 1...maxIndex])
        return binarySearch(array: slice, key: key)
    }
    
    if key < midValue {
        let slice = Array(array[minIndex...midIndex - 1])
        return binarySearch(array: slice, key: key)
    }
    
    if key == midValue{
        return true
    }
    
    return false
    
}

binarySearch(array: numbers, key: 11 )

func binarySearch2(numb: [Int], key: Int) -> Bool{
    
    var maxValueIndex = numb.count - 1
    var lowvalueIndex = 0
    var midvalueIndex = maxValueIndex/2
    let midvalue = numb[midvalueIndex]
    
    if key < numb[lowvalueIndex]{
        print("this is value is not in the index")
        return false
    }
    
    if key > midvalue {
        let slice = Array(numb[midvalueIndex+1...maxValueIndex])
        return binarySearch2(numb: slice, key: key)
    }
    
    if key < midvalue{
        let slice = Array(numb[lowvalueIndex-1...midvalueIndex])
        return binarySearch2(numb: slice, key: key)
    }
    
    if key == midvalue {
        return true
    }
    
    return false
    
}
