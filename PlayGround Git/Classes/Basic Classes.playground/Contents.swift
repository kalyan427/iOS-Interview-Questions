

// sample Class

/*
class className {
    property1
    property2
    property3
    method() {
        code
    }
    method2() {
        code
    }
}
 */

/*
// Creating Classes.

class Animal {
    var name: String = ""
    var sound : String = ""
    var breathesOxygen : Bool = true
    var howManyLegs: Int = 0
    
    func makeSound() {
        print(self.sound)
    }
}

// Making an instance of the class.

let cat = Animal()

// Assigning some values to the properties in the instances.

cat.name = "cat example"
cat.sound = "meow meow"
cat.howManyLegs = 4
cat.breathesOxygen = true

// printing out the property values.
print(cat.name)
print(cat.sound)
print(cat.howManyLegs)
print(cat.breathesOxygen)

// calling the instance method.
cat.makeSound()
 
 */

// creating a class declaration.
class Animal {
    var name: String = ""
    var sound: String = ""
    var howManyLegs:Int = 0
    var breathesOxygen: Bool = true
    
    // Class Initializer
    init(name: String,sound: String,howManyLegs: Int,breathesOxygen: Bool) {
        self.name = name
        self.sound = sound
        self.howManyLegs = howManyLegs
        self.breathesOxygen = breathesOxygen
    }
    
    func makeSound() {
        print(self.sound)
        
    }
        
        func description() -> String {
            return("name: \(self.name) sound: \(self.sound) howManyLegs: \(self.howManyLegs) breathesOxygen: \(self.breathesOxygen)")
        
    }
}
 
/*
// Making an instance of the class.
let cat = Animal(name: "meow", sound: "meow meow", howManyLegs: 4, breathesOxygen: true)

// printing the property value.
print(cat.name)
print(cat.sound)
print(cat.howManyLegs)
print(cat.breathesOxygen)

// printing out the property value.
print(cat.description())

// Calling an instance method.
cat.makeSound()
*/


// Mammal class,subclass of animal.
class Mammal:Animal {
    let hasFurorHair: Bool = true
    
    // overrides the description method in the superclass.
    override func description() -> String {
        return("Class: Mammal name: \(self.name)")
    }
}

// Making an instance class.
let lion = Mammal(name: "simba", sound: "roar", howManyLegs: 4, breathesOxygen: true)

// Displaying the sub class property.
print(lion.hasFurorHair)
print(lion.description())


 










