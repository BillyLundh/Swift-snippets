//: Playground - noun: a place where people can play

import UIKit


let numbers = [1,4,5,6,3,7,9]


func twoSumPointers(array: [Int], sum: Int) -> Bool {

    var lowIndex = 0
    var highIndex = array.count - 1
    
    while lowIndex < highIndex {
        
        let sumOfItems = array[lowIndex] + array[highIndex]
        
        if sumOfItems == sum {
            print("Sum of \(array[lowIndex]) and \(array[highIndex]) = \(sum)")
            return true
        }else if sumOfItems < sum {
            lowIndex += 1
        }else if sumOfItems > sum{
            highIndex -= 1
        }
    }
    print("Pointers have crossed")
    return false
}

twoSumPointers(array: numbers, sum: 12)



