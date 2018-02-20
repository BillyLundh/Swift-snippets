//: Playground - noun: a place where people can play

import UIKit


var stringDict = [String:String]()
stringDict["key"] = "value"
for (key, value) in stringDict {print("Key: \(key), Value: \(value)")}



var postDict = [String: String]()

postDict["id"] = "1"
postDict["date"] = "20012018"

print(postDict)

for (key, value) in postDict {print("\(key): \(value)")}

