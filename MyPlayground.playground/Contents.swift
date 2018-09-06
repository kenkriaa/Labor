//: Playground - noun: a place where people can play

import UIKit


//just testing some code

var str = "Hello, playground"
//basic function
func sayHello() {
    
    print("Hello")
    
}

sayHello()
//function with parameters
func sayHelloTo(_ name:String) {
    print("Hello \(name)")
}

sayHelloTo("Tom")

//funciont with return value
func addFourTo(x:Int) -> Int {
    
    var sum = x + 4
    
    return sum
}

print("A szám: \(addFourTo(x: 3))")
