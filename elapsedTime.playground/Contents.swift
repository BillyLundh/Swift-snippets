//: Playground - noun: a place where people can play

import UIKit


var x = 0.0
var y = 0.0
var min = 0.0
var hour = 0.0
var totTime = 0.0


func start() -> Double{
    let startSeconds = NSTimeIntervalSince1970
    x = startSeconds
    return startSeconds
}

start()

func stop() -> Double{
    var stopSeconds = NSTimeIntervalSince1970
    stopSeconds += 120
    y = stopSeconds
    return stopSeconds
}

stop()


func calculate() -> Double{
    let diff = y - x;
    totTime += diff
    return totTime
}

print("Nbr of seconds: ", calculate())


func nbrOfMinutes() -> Double{
    let min = totTime / 60
    return min
}

print("Nbr of minutes: ", nbrOfMinutes())

func nbrOfHours() -> Double{
    let hours = totTime / 60 / 60
    return hours
}

print("Hours: ", nbrOfHours())


print("Global start time: ", start())
print("Global stop time: ", stop())
print("Time differnece: ", calculate(), "seconds")







