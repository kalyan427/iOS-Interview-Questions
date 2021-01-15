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

- **Applicationdidfinishlaunchingwithoptions** is the first method called before the launching the application.this 
- Once applicationdidfinishlaunchingwithoptions method is called then next method is **Applicationwillenterforeground** method is called.this method becomes active once you answered thephone call or system interruption.
- **Applicationwillbecomeactive** is called after the transition to foreground.
- **Applicationwillresignactive** is called when the user gets phone call or uset hits home button.
- **Applicationwillenterbackground** is called once app enters into background.
- **Applicationwillterminate** this method is called when the app is going to kill from memory.

 Application life cycle is called when you use **UIAPPLICATIONDELEGATE** protocol.You need to use this protocol to get notify about terminate,background,foreground and if user opens any notification then app can know all this information. 

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

------------

### Conditional/Control Statements

There are following type of conditional statements are present:
- if else statements.
- Switch statements.
- if else if statements.

#### if else statements.

```swift
var age = 17
var underAge = 18

if (age < underAge) {
    print("UnderAge")
} else {
    print("Can Sell")
}
```

Detailed Description:
if the condition is true then if statement block is executed. if condition fails then else block condition is called.

#### if,else if statements.

```swift
var age = 31
var underAge = 18

if (age < underAge) {
    print("UnderAge")
} else if (age <= 30 ) {
    print("Youth")
} else {
    print("Close to Old")
}
```
Detailed Description.
if the condition is true then if statement block is executed. if condition is between to two values then elseif block is executed.if it is more than that then else block is called.

#### switch statements

```swift
var age = 18

switch age {
case 18:
    print("Under age")
case 30:
    print("Youth")
case 40:
    print("Old age")
default:
    print("Out of box")
}
```

Detailed Description:
in switch statements if any conditions is matched with the cases in switch statement then that particular case is executed.if any of the cases doesn't matches then default case will be executed.


------------

#### Optional Chaining

Description:
- for example,if the user needs to enter marital status when he is entering his martial status is not married.so he need to define as unmarried.may be in future he will marry.then his status will change.
- consider for example, a spouse.

```swift
// Optional
1. var spouseName: String?
print(spouseName) --> shows `nil`.

// Force unwrapping/optional unwrapping.
var spouseName: String?
2. spouseName = "kalyan"
print(spouseName) --> shows `optional(kalyan)`

// Optional Binding.
3. if let Spouse = spouseName {
    let greeting = "Hello," + Spouse
    print(greeting) --> shows `Hello,kalyan`
}

```

Detailed Description:
- In `1` variable is defined with optional value.so that variable do not need to have a data.optional can be defined using `?`.
- In `2` variable is assigned with some data so that it doesn't shows with nil.now spousename has some value instead of nil.
- so to overcome from `optional(kalyan)` we will define with `if let` if we use `3` this then if we have data in optional variable then it passes to that code block and print the value.if variable doesn't have value then it doesn't passes to that code block.


------------

#### Guard Statement

Description:
Guard statement is alternative to `if let`.It is similar to if else statement. in `if let` if it has data then it passes to that code block, else it passes to else code block.whereas in `Guard` statement if there is data then it passes through that code block or it will return from that code block. 

```swift
var value:String?
value = "Hello World"

//  if let
if let text1 = value {
    print(text1)
}

// Guard
func printValue() {
    guard let text2 = value else { return }
    print(value)
}

printValue()

```

Detail Explaination:
- in above example in if let, if there is value in `value` variable then it assigns to text1 and passes through code block and prints the value.
- if it is `guard` keyword,if `value` variable has value then it passes to code block and print the value.if it doesn't have value then it returns from initial code block.

# Data Passing:
When coming to data passing, data passing means passing data between two view controllers is called data passing.data passing is only a unidirectional not a bidirectional.
 
 Things to remember for data passing:

1. Take a two view controllers one with name “FirstViewController ” and second with “SecondViewController".
1.  Embed navigation controller for firstviewcontroller and secondviewcontroller.
1.  In firstviewcontroller take a label and a button.
1.  In secondviewcontroller take a label.
1.  Define outlets and actions for label and button for first view controller.
1.  In button action part define a let property to save the instance of second view controller by defining with identifier.
1. Then once secondvc instance is declared then use that property to access the function defined in secondviewcontroller and pass the text value to that function.
1. So you pass the data to secondviewcontroller.







