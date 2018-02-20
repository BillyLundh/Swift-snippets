//: Playground - noun: a place where people can play

import UIKit
import Foundation

var colorArray = ["green","white","blue","red","yellow","black","white", "red"]


func getMostCommonColor(array: [String]) -> [String] {

    var topColors: [String] = []
    var colorDictionary: [String: Int] = [:]
    
    
    for color in array{
        
    if let count = colorDictionary[color]{
        colorDictionary[color] = count + 1
    
    } else {
        colorDictionary[color] = 1
    }
}
    
    
    let bestVal = colorDictionary.values.max()
    
    for (color, count) in colorDictionary {
    
        if colorDictionary[color] == bestVal {
    
            topColors.append(color)
        }
    }
    return topColors
}

getMostCommonColor(array: colorArray)

print("The most common color is: \(getMostCommonColor(array: colorArray))")
