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

//New class that inherits Animal and all of it's methods and properties
class Canine : Animal {
    //new Canine Property
    var legs: Int
    
    init(name: String, age: Int, legs: Int) {
        self.legs = legs
        super.init(name: name, age: age)
    }
    
    //override will effectively replace the eat() method of Animal
    override func eat() {
        print("nomnom")
    }
    //in this override, we called on super.sleep()
    //that means when Canine.sleep() is called, it will do anything needed in the inherited class method sleep AND also do code we write for the override method
    override func sleep() {
        super.sleep()
        print("zZzZ")
    }
    //another override
    override func play() {
        print("grrrr")
    }
    
    //A new method only available to Canine
    func bark() {
        print("woof")
    }
    
    
}

var animal: Animal = Animal(name: "Taylor", age: 4)


animal.eat()
animal.play()
animal.sleep()


animal = Canine(name: "Taylor", age: 9, legs: 4)


animal.eat()
animal.play()
animal.sleep()


/*
Uncomment below to see compiler error. animal of classType Animal doesn't know anything about classType Dog's bark() or legs
 */

//animal.bark()
//animal.legs


//Lets make another Class that inherits from Animal and make it slightly more complicated

class Person : Animal {
    
    
    //Holy Guacamole, what are those? Well lets first explain why we need an override here and not above in Dog class
    //the Dog init() wasn't recognized by the compiler as the same init as Animal because of an extra argument
    //Here however, we are using the same arguments so compiler says, NO! Override this thing noooow.
    //As for the '="John Doe"' part, I'll explain when I instantiate the class later
    override init(name: String = "John Doe", age: Int = 0) {
        super.init(name: name, age: age)
    }
    
    override func eat() {
        cantDecide()
        callFriends()
        realizeYouDidntHaveThatManyFriendsAfterAll()
        super.eat()
    }
    
    override func sleep() {
        useiOSAppForTheNextThirtySomeOddMinutesBecauseOfEminentDreadOfSleep()
        ponderExistanceWithinTheVastnessOfTheExpandingUniverse()
        super.sleep()
    }
    
    //These are all the extra functionality that person needs to eat and sleep properly
    
    func cantDecide() {
        print("Do I really want to?")
    }
    
    func callFriends() {
        print("Hey! How's it going? Busy?")
    }
    
    func realizeYouDidntHaveThatManyFriendsAfterAll() {
        print("All by my   Seeeeellfff")
    }
    
    func ponderExistanceWithinTheVastnessOfTheExpandingUniverse() {
        print("Oh shit")
    }
    
    func useiOSAppForTheNextThirtySomeOddMinutesBecauseOfEminentDreadOfSleep(){
        print("swipe left.. left... left... right..")
    }
    
    
}


//Lets take a look at the initializer first

var mrLonely: Animal = Person()
mrLonely.name
mrLonely.age

mrLonely = Person(name: "Bieber", age: 3)
mrLonely.name
mrLonely.age

//Thats right folks! No arguments needed in the first case! That is because WITHIN the method argument names, you define them with default values.  Those values are ONLY USED when no information is passed in for that argument leading to more initializers that can look like this \/

mrLonely = Person(age: 40)
mrLonely.name
mrLonely.age

mrLonely = Person(name: "Guacamole")
mrLonely.name
mrLonely.age


//Last but not least! Methods/functions
//Try typing in mrLonely. and see what available methods can be used.  Limited right? who doesn't want to ponder!?





//Here is the beauty of class inheritance. mrLonely is classType Animal which only has access to three methods.
//But in the Person class we have added many more methods that can add on to the original versions of those inherited methods

mrLonely.eat()




mrLonely.sleep()


//Now myLonely can enjoy the suffering of life just like the rest of us!






















