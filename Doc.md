#### Classes Vs Struct

##### Description:

###### Class:
 Class are` reference type`.for example consider google sheets which shared to 2 persons.if person1 modifies the sheet then person2 sees the same value in google sheet because it modifies parent class.
 
 ###### Struct:
 - Struct are `value type`.for example consider microsoft docs which shared to 2 persons through email.if both persons download to there local machine.then if person1 modifies the document then it doesn't modifies in person2 document.
 - if you use struct parent class into two subclass.if you modify in one subclass it doesn't modifies in parent class and in another subclass.

```swift

### Classes

##  Defining Class.

class Animal {
    var name: String = ""
    var legs: Int = 0
    var sound: String = ""

    func makeSound() {
        print(self.sound)
    }
}

let cat = Animal()
cat.name = "Meow"
cat.legs = 4
cat.sound = "Meow Meow"

print(cat.name)
print(cat.legs)
print(cat.sound)

cat.makeSound()

##  Initializing Class.

class Animal {
    var name: String = ""
    var sound: String = ""
    var legs: Int = 0
    var isFur: Bool = true

    init (name: String,sound: String,legs: Int,isFur: Bool) {
        self.name = name
        self.sound = sound
        self.legs = legs
        self.isFur = isFur
    }
    func makeSound() {
        print(self.sound)
    }
}

let dog = Animal(name: "Bow", sound: "Bow Bow", legs: 4, isFur: true)
dog.makeSound()

print(dog.name)
print(dog.sound)
print(dog.legs)
print(dog.isFur)

// Making a subclass.

class mammal: Animal {
    let breathesOxygen: Bool = true
}

let cat = mammal(name: "Meow", sound: "MeowMeow", legs: 4, isFur: true)
print(cat.breathesOxygen)
```
### Difference between class and structure.
- Structure cannot inherit from another structure.

### Value types vs references type.
- structures are `value` type, it means if you assign a structure to a variable.if that variable modifies the properties of that structure then it doesn't effects the `original`.it just modifies in the `copy` of a structure.
- classes are `reference` type, it means if you assign a class to a variable then if that variable modifies tha properties of that class then the values(propoerties) will change in the `original class` and in `variable class`. 
------------
### App LifeCycle

##### Description:
Application life cycle methods contain 6 methods which are responsible for handling the app in various ways. For example If the user clicks on home button the app will go to home page then if we want to do any stuff then we can utilize these methods like `applicationDidEnterBackground` for doing background stuff.

These Methods are

1. applicationDidFinishLaunchingWithOptions.
1. applicationWillEnterForeground.
1. applicationDidBecomeActive.
1. applicationWillResignActive.
1. applicationDidEnterBackground.
1. applicationWillTerminate.


Detail Explanation: 
-  Initially, when you run your application, the `first method in the app` that will invoke is `applicationdidFinishLaunchingWithOptions,` then you can see the InitialViewController (Note: `applicationDidBecomeActive`will be called after `applicationdidFinishLaunchingWithOptions` because the app is becoming active). Any business logic that we want to do as soon as app launch then we will keep that code in this method.
-  In the next step, it comes into the `applicationDidBecomeActive` method.
- when you click the home button, then the `applicationWillResignActive` method is called.
-  if you open the application from the home button. Then the `applicationDidEnterBackground` method is called. 
-  in the next step, it enters into the "`applicationWillEnterForeground` method .then it calls the `applicationDidBecomeActive` method.
------------
### View LifeCycle 


##### Description

View life cycle methods are called whenever we enter into a particular viewcontroller depends on our viewcontroller or app.We will write code in that particular viewcontroller method.So that it will do that particular action in that methods depends on the app.Every viewcontroller has viewlifecycle methods.

 These Methods are:
- viewDidLoad
- viewWillAppear
- viewDidAppear
- viewWillDisappear
- viewDidDisappear

Detail Explaination:
- whenever we enters into a viewcontroller,immediately `viewDidLoad` method is called so whatever we want show at initially.we need to define in this method.
- transition between `viewDidLoad to viewDidAppear` in this process.`viewWillAppear` method is called.so whatever the conditions/things to show between in these transition.we can define in this method.
- `viewDidAppear` this method is called once the intial methods are called.these method shows what ever the content need to display.
- transition between `viewDidAppear to viewDidDisAppear` in this process.`viewWillDisAppear` method is called.so whatever the conditions/things to show between in these transition.we can define in this method.
- `viewDidDisAppear` this method is called once the Appear method is called.these method shows what ever the content need to display before viewController changes to another viewController.




