#### 1001. Classes Vs Struct

##### Description:

###### Class:

Class are `reference type`.for example consider google sheets which shared to 2 persons.if person1 modifies the sheet then person2 sees the same value in google sheet because it modifies parent class.

###### Struct:

- Struct are `value type`.for example consider microsoft docs which shared to 2 persons through email.if both persons download to there local machine.then if person1 modifies the document then it doesn't modifies in person2 document.
- if you use struct parent class into two subclass.if you modify in one subclass it doesn't modifies in parent class and in another subclass.

# Difference Between Class & Struct.

### Class

1. Class is reference type.
1. If you define a variable and inherit the another variable as parent and that another variable which inherit the parent class.
1. Then in RAM memory is created and all variables shares the same memory.It means all variable refered to the same memory.
1. So whenever you change the property of a variable then it modifies the value for all variables due to reference type.

```swift
class Person {
    var name: String?
    var height: Int?
    var hairColor: String?
}

var mike = Person()
mike.name = "Stephen"

var spike = mike
spike.name = "Tiffany"

print(mike.name)
print(spike.name)

mike.name = "Renamed Stephan"

print(mike.name)
print(spike.name)

```

###### Output

```swift
Optional("Tiffany")
Optional("Tiffany")
Optional("Renamed Stephan")
Optional("Renamed Stephan")
```

### Struct

1. Struct are Value type.
1. If you define a variable and inherit the another variable as parent and that another variable which inherit the parent class.
1. Then in RAM memory is created and all variables have diffrent memory allocation.It means all variable allocation is different.
1. So whenever you change the property of a variable then it modifies the value for that particular variable and it doesn't changes value for all variables due to value type.

```swift

struct Animal {
    var type: String?
    var fur: Bool?
    var legs: String?
}

var dog = Animal()
dog.type = "Dog"

var cat = dog
cat.type = "Cat"

print(dog.type)
print(cat.type)

dog.type = "Renamed Dog"

print(dog.type)
print(cat.type)
```

###### Output

```swift
Optional("Dog")
Optional("Cat")
Optional("Renamed Dog")
Optional("Cat")
```

https://hi-static.z-dn.net/files/d10/deb160cedb8e50eb15a31f4d99a4749b.jpg

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

---

### 1002. App LifeCycle

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

- Initially, when you run your application, the `first method in the app` that will invoke is `applicationdidFinishLaunchingWithOptions,` then you can see the InitialViewController (Note: `applicationDidBecomeActive`will be called after `applicationdidFinishLaunchingWithOptions` because the app is becoming active). Any business logic that we want to do as soon as app launch then we will keep that code in this method.
- In the next step, it comes into the `applicationDidBecomeActive` method.
- when you click the home button, then the `applicationWillResignActive` method is called.
- if you open the application from the home button. Then the `applicationDidEnterBackground` method is called.
- in the next step, it enters into the "`applicationWillEnterForeground` method .then it calls the `applicationDidBecomeActive` method.

- **Applicationdidfinishlaunchingwithoptions** is the first method called before the launching the application.this
- Once applicationdidfinishlaunchingwithoptions method is called then next method is **Applicationwillenterforeground** method is called.this method becomes active once you answered thephone call or system interruption.
- **Applicationwillbecomeactive** is called after the transition to foreground.
- **Applicationwillresignactive** is called when the user gets phone call or uset hits home button.
- **Applicationwillenterbackground** is called once app enters into background.
- **Applicationwillterminate** this method is called when the app is going to kill from memory.

Application life cycle is called when you use **UIAPPLICATIONDELEGATE** protocol.You need to use this protocol to get notify about terminate,background,foreground and if user opens any notification then app can know all this information.

---

### 1003. View LifeCycle

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

---

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

---

#### 1004. Optional Chaining

Optionals: ?

Forced Unwrapping: Exclamation mark ( ! ) is used to unwrap value.

Optional chaining: Optional chaining is the way by which we try to retrieve a values from a chain of optional values

Optional Binding (If let) : You use optional binding to check if the optional contains a value or not. If it does contain a value, unwrap it and put it into a temporary constant or variable.

Guard: We use the guard statement to transfer program control out of scope when certain conditions are not met. The guard statement is similar to the if statement with one major difference. The if statement runs when a certain condition is met. However, the guard statement runs when a certain condition is not met.

```swift
// Guard
guard expression else {
  // statements
  // control statement: return, break, continue or throw.
}
this code wont execute of there is no value in expression

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

#### 1005. Data Passing:

When coming to data passing, data passing means passing data between two view controllers is called data passing.data passing is only a unidirectional not a bidirectional.

Things to remember for data passing:

1. Take a two view controllers one with name “FirstViewController ” and second with “SecondViewController".
1. Embed navigation controller for firstviewcontroller and secondviewcontroller.
1. In firstviewcontroller take a label and a button.
1. In secondviewcontroller take a label.
1. Define outlets and actions for label and button for first view controller.
1. In button action part define a let property to save the instance of second view controller by defining with identifier.
1. Then once secondvc instance is declared then use that property to access the function defined in secondviewcontroller and pass the text value to that function.
1. So you pass the data to secondviewcontroller.



### 1006. JSON Data Passing

```swift
// To import json Serialization.
import Foundation

// JSON Data
let str = "{\"names\": [\"Mike\",\"Spike\",\"Michelle\"]}"

// JSON serialization likes to accept in utf8 format.
let data = Data(str.utf8)

//  do catch for error handling.
do {
// We will take it as Array format.
    if let jsonData = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
        if let names = jsonData["names"] as? [String] {
            print(names)
        }
}
}
```

### 1007. Key-Value Observing

1. It will notify to the object change in the properties of other objects.
1. It is a cocoa programming pattern which notify to the object changes in the properties of other objects.
1. It is helpful when communicating between two different logically seperated parts like model and view.
1. key value observing can only be implemented in the class which inherit from NSObject.
1. kvo depends on obc runtime compiler,you need to use objc class that inherit from NSObject.

```swift

import Foundation

class Person: NSObject {
    @objc dynamic var name = "harsha"
}

var kalyan = Person()

kalyan.observe(\Person.name, options: .new) { (person, change) in
    print("\(person.name)")
}

kalyan.name = "abc"
```

## What is Delegation?

1. Delegation is a design pattern in ios.
1. it allows to send messages from one
1. it is a one to one relationship.which means it communicates one to one.
1. Delegates is nothing but a protocol.
1. a protocol which contains a methods.

  Example: UITableviewDelegate

## What is Notification?

It is used for one to many communication. for example if we change something that is being observed by the other methods all the methods which is susbcribed to it will change. 

  Example: UIDeviceBatteryStateDidChangeNotification


## What is the differnece between Delegates and Notifications

Delegates create a has-a relationship between two classes. It supports two-way communication i.e. we can return the value and it also has a chance to modify or reject the operations as well. It checks protocol methods implementation at compile time. Only one designated object can listen the message. Similar to the telephonic conversation.
Notification based on one to many communication. It cannot receive feedback and have no link between the objects to communicate back and forth. There is no compile time checking for method implementation. Any number of the object can receive the message.



### Enums in swift?

1. Enumerations are defined with enum.
1. Enumerations are data types which contains named values called as a members.


### 1008. What are singletons and what's a good use case for them in iOS applications?

1. Singleton is a single class instance which you can access in your entire codebase.
1. A singleton class returns same instance how many times you request.
1. A singleton object provides a global point of access to the resources of its class.
1. Singleton is used where single point of control is desirable.

#### Disadvantages of singleton.

1. It is global statefullness.
1. once if project gets bigger then at some point you may need to reset it and sharing it through your whole app doesn't make any sense.

Example:

1. UI Application.
1. NSFile manager.

### 1009. What is delegate pattern in iOS?

1. Delegate pattern is the variation of the observer pattern.
1. Delegate pattern is a one to one relationship.
1. Delegate allows sending message from one object to another object.

### 10010. What are clousures.. What is escaping and Non-Escaping?

1. Closures are self-contained blocks of functionality that can be passed around and used in our code.

. An escaping closure is a closure that’s called after the function it was passed to returns. In other words, it outlives the function it was passed to.

. A non-escaping closure is a closure that’s called within the function it was passed into, i.e. before it returns. This closure never passes the bounds of the function it was passed into.

### MVC vs MVVM

1. MVC stands for model,view,controller where M represents model, V represents UI, C represents Controller.
1. Data model is connected to view is through "Controller".
1. In MVC Controller directly manipulates data in given model.
1. In MVC View and Model doesn't need to know each other.

#### Drawback:

1. so when an application scales much larger and evolves into an operation with many related models, the amount of controllers used must grow.
1. where do you put a service object that does HTTP networking? It’s certainly not a view. Is it a model? Nope. Is it a controller? Hmm.. . not really a controller either.

### MVVM

1. MVVM stands for Model,View and ViewModel.
1. Unlike mvc viewmodel is not a controller.it acts as binder that bind data between view and model.
1. it allows view and model to communicate each other directly.

#### Drawback:

1. Because it relies on data binding, the ViewModel consumes a considerable amount of memory in comparison to it’s controlling counterparts.

#### 10011. Multithreading and Concurrency:

 How to achieve concurrency in iOS

we can achieve concurrency in two ways.

1. Using Operations and OperationQueues.
1. Using Grand Central Dispatch(GCD).

#### GCD

Grand Central Dispatch is a multi-threaded code without manually creating and managing the threads themselves.

GCD is built on top of threads. Under the hood it manages a shared thread pool. With GCD you add blocks of code or work items to dispatch queues and GCD decides which thread to execute them on. Note that GCD decides how much parallelism is required based on the system and available system.

1. GCD can improve your app’s responsiveness by helping you defer computationally expensive tasks and run them in the background.

#### NSOperationQueue

NSOperationQueue regulates the concurrent execution of operations. It acts as a priority queue, such that operations are executed in a roughly First-In-First-Out manner, with higher-priority (NSOperation.queuePriority) ones getting to jump ahead of lower-priority ones. NSOperationQueue can also limit the maximum number of concurrent operations to be executed at any given moment, using the maxConcurrentOperationCount property.

#### Sync vs Async

##### Sync

When your code reaches a sync statement, it will block the current queue until that task completes. Once the task returns/completes, control is returned to the caller, and the code that follows the sync task will continue.

##### Async

An async statement, on the other hand, will execute asynchronously with respect to the current queue, and immediately returns control back to the caller without waiting for the contents of the async closure to execute. There is no guarantee as to when exactly the code inside that async closure will execute.



#### What is Delegate pattern in iOS?

Delegate pattern is a variation of Observer pattern where only one object can observe events coming from another object. That effectively makes Delegate pattern a one-to-one relationship. Delegates are commonly used across iOS frameworks. Two of the arguably most commonly used examples would be and UITableViewDataSource. UITableViewDelegate These are both represented by a protocol that an object conforms to and UITable-View uses the single object it is provided with to send messages/events. Unlike with Observer pattern, there can be only one delegate object.


#### What is Core Data?

Core Data is one of the most popular frameworks provided by Apple for iOS and macOS apps. Core data is used to manage the model layer object in our application. You can treat Core Data as a framework to save, track, modify and filter the data within iOS apps, however, Core Data is not a Database.

2. What is an object graph in Core Data?
An object graph is nothing more than a collection of objects that are connected with one another. The Core Data framework excels at managing complex object graphs. The Core Data framework takes care of managing the life cycle of the objects in the object graph.

3. What is NSManagedObjectContext?
The NSManagedObjectContext object manages a collection of model objects, instances of the NSManagedObject class. It is possible for an application to have multiple managed object contexts. Each managed object context is backed by a persistent store coordinator.

4. What is the core data stack?
Core Data consist of following stack objects:
A managed object model.
A managed object context.
A persistent store coordinator.
A persistent store (storage).

5. Is Core Data == SQLite or some wrapper?
Core data API is provided by apple for persisting data in SQL, XML, file system. It is not same as SQLite which involves disk I/O (input/output) operations. Most of the time core data uses in-memory objects (managed object context).

6. What types of stores does core data support?
Binary, XML, and SQLite.

7. What is Entity Inheritance?
An entity is a class definition in Core Data. The classic example is an Employee or a Company. In a relational database, an entity corresponds to a table.
NOTE:- Be careful with entity inheritance when working with SQLite persistent stores. All entities that inherit from another entity exist within the same table in SQLite. This factor in the design of the SQLite persistent store can create a performance issue.

8. What is an abstract entity in core data?
An Entity can be abstract, in which case it is never directly attached to a managed object.
An abstract object (in programming) or entity (in Core Data) is an object or entity that is never instantiated.
An entity is abstract if you will not create any instances of that entity. You typically make an entity abstract if you have a number of entities that all represent specializations of (inherit from) a common entity that should not itself be instantiated.
For example:- in the Employee entity, you could define Person as an abstract entity and specify that only concrete sub-entities (Employee and Customer) can be instantiated. By marking an entity as abstract in the Entity pane of the Data Model inspector, you are informing Core Data that it will never be instantiated directly.

9. What is a fetchedResultcontroller?
A controller that you use to manage the results of a Core Data fetch request and display data to the user in UITableView.

10. What is an NSManagedObjectId?
A managed object ID uniquely identifies the same managed object both between managed object contexts in a single application, and in multiple applications (as in distributed systems). Identifiers contain the information needed to exactly describe an object in a persistent store (like the primary key in the database), although the detailed information is not exposed. The framework completely encapsulates the “external” information and presents a clean object oriented interface.

11. What is Persistent store?
A persistent store is a repository in which managed objects may be stored. You can think of a persistent store like a database data file where individual records each hold the last-saved values of a managed object. Core Data persistent store file are: binary, XML, and SQLite

12. What is NSPersistentStoreCoordinator?
An object persists data to disk and ensures the persistent store(s) and the data model are compatible. It mediates between the persistent store(s) and the managed object context(s) and also takes care of loading and caching data. That’s right. Core Data has caching built-in.
Persistent Store Coordinator is actually the instances of “NSPersistentStoreCoordinator” class.👈👈👈

13. Can we do Multithreading with core data?
We can do multithreading in core data with multiple contexts, example background context for long-running tasks (batch inserting/fetching/updating) and update UI on the main thread.

14. What is the minimum necessary classes and the relationship between them?
We need NSManagedObject, NSManagedObjectContext and a Persistence store container. These classes/objects are the main building blocks of the core data stack.
Data operations like insert, update and delete are performed in managed object context. Managed object context can contain one or more managed object model instances. Persistence store coordinator communicates between managed object context and store.

15 Will you ever pass a managed object from one context to another context?
Or🤝🤝🤝

16. How to transfer manage object from one thread to another thread?
No, NSManagedObject instances are not intended to be passed between queues. Doing so can result in corruption of the data and termination of the application. When it is necessary to hand off a managed object reference from one queue to another, it must be done through NSManagedObjectID instances.
According to the Core Data concurrency rule, each thread must have its own managed object context. This is because NSManagedObjectContext and NSManagedObject, the two most fundamental objects in Core Data, is not thread-safe. They shouldn’t be initialized in one thread and accessed from a different thread.

17. What is lazy initialization, how does this relate to core data, situations when this can be handy?
When working with core data it is recommended to use a lazy keyword for lazy initialization of persistent container.
Due to lazy keyword the object will be initialized only when accessed. It is memory efficient technique used with some of the classes like DateFormatter, Calendar also. It also suits a business requirement where you have a model with it’s attributes.

18. Can the NSPersistentStoreCoordinator have more persistent stores?
Yes, but can’t create relationships between objects in different stores.

19. How to read only a few attributes of an entity?
We can use the NSFetchRequest class’s property “setPropertiesToFetch”. We can pass an array of properties in string format in setPropertiesToFetch method.

20. What is NSAsynchronousFetchRequest?
An asynchronous fetch allows developers to execute a fetch request without blocking the Managed Object Context for the duration of the fetch. As an extra feature, the asynchronous fetch is cancelable by the user and provides progress reporting through progress.
To fetch the data asynchronously in a background queue, Core Data provides the object NSAsynchronousFetchRequest.

21. What is Faulting mechanism in Core Data?
“When you retrieve an object from an NSManagedObjectContext (MOC) you can’t tell (in the normal course of its use) whether it’s a fault or a realized object”. A fault will be converted into a realized object (“fired”) automatically by the Core Data framework in most cases when it is necessary to do so,
For example:- when accessing a property of the object. If you need to fire a fault yourself, you can do so by invoking its willAccessValueForKey: method with a nil argument.
♥♥️♥️When you retrieve an object from an NSManagedObjectContext (MOC) you can’t tell (in the normal course of its use) whether it’s a fault or a realized object*** — Yes we can, use –isFault

22. What is NSManagedObjectModel?
❍ it contains information about the models or entities of the object graph, what attributes they have, and how they relate to one another.
❍ The NSManagedObjectModel object knows about the data model by loading one or more data model files during its initialization.

23. What is an Attribute?
An attribute is a piece of information attached to a particular entity. For example, an Employee entity could have attributes for the employee’s name, position and salary. In a database, an attribute corresponds to a particular field in a table.

24. What is the relationship?
A relationship is a link between multiple entities. In Core Data, relationships between two entities are called to-one relationships, while those between one and many entities are called to-many relationships.
For example:- a Manager can have a to-many relationship with a set of employees, whereas an individual Employee will usually have a to-one relationship with his manager.

25. What is NSManagedObject?
An NSManagedObject is a run-time representation of a Core Data entity. You can read and write to its attributes using Key-Value Coding.

26. What is Concurrency?
Concurrency is the ability to work with the data on more than one queue at the same time. If you choose to use concurrency with Core Data, you also need to consider the application environment.
For the most part, AppKit and UIKit are not thread-safe. In macOS in particular, Cocoa bindings and controllers are not threadsafe — if you are using these technologies, multithreading may be complex.
There are two concurrency types a managed object context can use:-
🌲 Private Queue Concurrency
🌲 Main Queue Concurrency

27. What is Private Queue Concurrency?
Private 🗝 Queue specifies the context that will be associated with a private dispatch queue instead of the main queue. This is the type of queue you just used to move the export operation off of the main queue so it would no longer interfere with the UI.

28. What is Main Queue Concurrency?
Main Queue, the default type, specifies that the context will be associated with the main queue. This type is what the main context (core data stack.mainContext) uses. Any UI operation, such as creating the fetched results controller for the table view, must use a context of this type.
Contexts and their managed objects must only be accessed from the correct queue. NSManagedObjectContext has perform(_:) and performAndWait(_:) to direct work to the correct queue.

29. What is Wrappers?
Wrapper libraries provide some much needed syntactic sugar and convenience methods to Core Data’s verbose and complicated APIs.
For example:- to insert a new managed object into a managed object context, it’s a class method.

30. What are Synchronizers in Core data?
Whereas adapters synchronize information through an existing, general-purpose interface such as REST, synchronizers use a more direct protocol, offering better integration and performance at the expense of portability and generality.

31. Clean way to save observers on Core Data objects?
Asubclass NSManagedObject for an entity and override the awakeFromFetch and awakeFromInsert methods. the awakeFromInsert gets called when you first insert the entity, so you could move your existing code to add the observers to there. The awakeFromFetch is where you would add the observers when fetching.

32. What is the difference between transformable and binary data?
With a transformable attribute, you read and write instances of any class that can be converted to and from NSData. The actual data storage is the same as with a binary attribute, but Core Data uses an NSValueTransformer to convert to/from NSData when necessary.
For example:- say your managed object has an image attribute where it would be convenient to read and write UIImage directly. Except, UIImage can’t be saved in Core Data. But UIImage can be converted to and from NSData. So, if you used a transformable attribute you could read and write UIImage while still keeping NSData in the data store.

33. How can I encrypt Core-Data contents on an iPhone?
You can encrypt individual properties in your Core Data model entities by making them transformable properties, then creating an NSValueTransformer subclass which will encrypt and decrypt the data for that property. While this is not the whole-database decryption that you’re looking for, it will have a much lower memory footprint than decrypting an entire database into memory. Additionally, it will allow the decryption to be done lazily, rather than all upfront, so your application will load much faster. Depending on the encryption used, I would even expect that the on-disk data accesses for loading each entity would be slower than the decryption process for the properties, so you won’t see that much of a performance penalty when accessing the properties.
Transformable properties like this are very easy to use because you read and write to them as normal, while the encryption/decryption goes on behind the scenes.

34. How to Save custom class into Core data?
You have a couple of options:
👉🏻 Don’t tell Core Data how to transform the data. In this case, Core Data will attempt to call encodeWithCoder: on your object to convert it to NSData. That’s why you get the error that mentions this method — it’s trying to call the method on your class, but that method doesn’t exist. In this case, your class must conform to NSCoding for the transformation to occur.
👉🏻 Tell Core Data on how to transform the data. In this case you create a subclass of NSValueTransformer that performs the transformation. You configure this on the attribute, either in the Core Data model editor or in code. In this case, you must have a custom transformer class that knows how to perform the transformation.

35. What is transformable in core data?
Transformable attributes are useful for storing non standard object types within Core Data.
For Example:- I provide code Below that lets you store UIImages as An Attribute within core data. The image Data is Converted to and From an NSData Instance that contains the image’s PNG Representation .this is all handled transparently for you by a custom NSValueTransformer.

36 What is Uniquing?
Core Data ensures that — in a given managed object context — an entry in a persistent store is associated with only one managed object. The technique is known as Uniquing. Without uniquing, you might end up with a context maintaining more than one object to represent a given record.

37. What is an Entity?
A Managed object model allows core data to map from records in a persistent store to managed objects that you use in your Application. The model is a collection of entity description objects(instance of NSEntityDescription).

38. How to synchronize contexts?
The Core Data framework uses notifications to notify objects of changes taking place in a managed object context. Every managed object context posts three types of notifications to notify objects about the changes taking place in the managed object context:
🌴 NSManagedObjectContextObjectsDidChangeNotification
🌴 NSManagedObjectContextWillSaveNotification
🌴 NSManagedObjectContextDidSaveNotification
☄️ Managed Object Context Did Change
The NSManagedObjectContextObjectsDidChangeNotification notification is broadcast every time a managed object in the managed object context changes. Every time a managed object is inserted, updated, or deleted from a managed object context, the managed object context posts an NSManagedObjectContextObjectsDidChangeNotification notification.
☄️ Managed Object Context Will Save
As the name of the NSManagedObjectContextWillSaveNotification notification suggests, this notification is posted before a save operation is performed.
☄️Managed Object Context Did Save
The managed object context performing the save operation posts an NSManagedObjectContextDidSaveNotification notification after successfully saving its changes.

39. what is the Difference between core data and SQLite?
SQLite:
🌿 SQLite is database itself like we have SQL Server.
🌿 Have Data Constraints features.
🌿 Operates on data, store in Disk.
🌿 Can Drop table and Edit data Without loading them in memory.
🌿 Slow as Compared to core data.
CoreData:
🌱 core data is ORM(Object graph model) which create a layer between the database and the UI. It speeds up the process of interaction as we don’t have to Write Queries, just work with ORM and let ORM handled the backend. For save or retrieval of large data because of it’s abilities to handle the less processing speed of the device.
🌱 Don’t have Data Constraints if required need to implement by business logic.
🌱 Operates on in memory(data needs to be loaded from disk to memory)
🌱 Need to load entire data if we need update drop table.

40. What is Transient Property?
Transient properties are properties on an NSManagedObject that are not persisted t the object-store. They are calculated at runtime, usually on the basis of other property Values.
