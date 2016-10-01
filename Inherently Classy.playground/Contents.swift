//: Playground - noun: a place where people can play

import UIKit

//Base Class
class Animal {
    
    let name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func eat() {
        print("nom")
    }
    
    func sleep() {
        print("ZzZ")
    }
    
    func play() {
        print("herpderp")
    }
    
}

//First inheritance
class Canine : Animal {
    
    var legs: Int
    
    init(name: String, age: Int, legs: Int) {
        self.legs = legs
        super.init(name: name, age: age)
    }
    
    override func eat() {
        print("nomnom")
    }
    
    
    //Looks like I missed the override sleep()
    
    override func play() {
        print("grrrr")
    }
    
    
    func bark() {
        print("woof")
    }
    
    
}

var animal: Animal = Animal(name: "Taylor", age: 4)


animal.eat(); animal.sleep(); animal.play()


animal = Canine(name: "Taylor", age: 9, legs: 4)


animal.eat(); animal.sleep(); animal.play()


/*
Uncomment below to see compiler error.
 animal of classType Animal doesn't know anything about classType Dog's bark()
 */

//animal.bark()














