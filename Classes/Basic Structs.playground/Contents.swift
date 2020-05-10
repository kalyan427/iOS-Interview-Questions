
/*
struct structName {
    property1
    property2
    property3
    
        method1() {
        code
    }
}
*/

// structures
// Creating a structure declaration.
struct Reptile {
    var name: String = ""
    var sound: String = ""
    var numberOfLegs:Int = 0
    var breathesOxygen: Bool
    var hasFurorHair: Bool = false
    
    func makeSound() {
        print(sound)
    }
    
    func description() -> String{
        return ("Class name: Reptiles name: \(self.name) sound:\(self.sound)")
    }
}

// Making an instance of the struct.
let snake = Reptile(name: "Rattle Snake", sound: "Buss", numberOfLegs: 0, breathesOxygen: false, hasFurorHair: false)

// printing out the property values.
print(snake.description())
