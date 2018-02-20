//: Playground - noun: a place where people can play

import UIKit

let numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

func binarySearch(array: [Int], key: Int) -> Bool {
    
    if array.count == 0 { return false}
    
    let minIndex = 0
    let maxIndex = array.count - 1
    let midIndex = maxIndex/2
    let midValue = array[midIndex]
    
    if key < array[minIndex] || key > array[maxIndex]{
        print("\(key) is not in the array")
        return false
    }
    
    if key > midValue {
        let slice = Array(array[midIndex + 1...maxIndex])
        print(">")
        return binarySearch(array: slice, key: key)
    }
    
    if key < midValue {
        let slice = Array(array[minIndex...midIndex - 1])
        print("<")
        return binarySearch(array: slice, key: key)
    }
    
    if key == midValue {
        print("\(key) found in array")
        return true
    }
    return false
}

binarySearch(array: numbers, key: 4)

    