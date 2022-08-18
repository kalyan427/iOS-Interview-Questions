## Classes Vs Struct

#### Class:

Class are `reference type`.for example consider google sheets which shared to 2 persons.if person1 modifies the sheet then person2 sees the same value in google sheet because it modifies parent class.

#### Struct:

- Struct are `value type`.for example consider microsoft docs which shared to 2 persons through email.if both persons download to there local machine.then if person1 modifies the document then it doesn't modifies in person2 document.
- if you use struct parent class into two subclass.if you modify in one subclass it doesn't modifies in parent class and in another subclass.

## Difference Between Class & Struct.

#### Class

1. Class is reference type.
2. If you define a variable and inherit the another variable as parent and that another variable which inherit the parent class.
3. Then in RAM memory is created and all variables shares the same memory.It means all variable refered to the same memory.
4. So whenever you change the property of a variable then it modifies the value for all variables due to reference type.

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

#### Output

```swift
Optional("Tiffany")
Optional("Tiffany")
Optional("Renamed Stephan")
Optional("Renamed Stephan")
```

#### Struct

1. Struct are Value type.
2. If you define a variable and inherit the another variable as parent and that another variable which inherit the parent class.
3. Then in RAM memory is created and all variables have diffrent memory allocation.It means all variable allocation is different.
4. So whenever you change the property of a variable then it modifies the value for that particular variable and it doesn't changes value for all variables due to value type.

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

#### Output

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

## App LifeCycle

#### Description:

Application life cycle methods contain 6 methods which are responsible for handling the app in various ways. For example If the user clicks on home button the app will go to home page then if we want to do any stuff then we can utilize these methods like `applicationDidEnterBackground` for doing background stuff.

These Methods are

1. applicationDidFinishLaunchingWithOptions.
2. applicationWillEnterForeground.
3. applicationDidBecomeActive.
4. applicationWillResignActive.
5. applicationDidEnterBackground.
6. applicationWillTerminate.

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

## View LifeCycle

### Description

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

## Optionals

Forced Unwrapping: Exclamation mark ( ! ) is used to unwrap value.

Optional chaining: 

1. if the optional contains a 'value’, then it returns the value.
2. if the optional contains a 'nil' value, then it returns the nil.

Optional Binding (If let) : Other than forced unwrapping, optional binding is a simpler and recommended way to unwrap an optional. You use optional binding to check if the optional contains a value or not. If it does contain a value, unwrap it and put it into a temporary constant or variable.

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

## Data Passing:

When coming to data passing, data passing means passing data between two view controllers is called data passing.data passing is only a unidirectional not a bidirectional.

Things to remember for data passing:

1. Take a two view controllers one with name “FirstViewController ” and second with “SecondViewController".
2. Embed navigation controller for firstviewcontroller and secondviewcontroller.
3. In firstviewcontroller take a label and a button.
4. In secondviewcontroller take a label.
5. Define outlets and actions for label and button for first view controller.
6. In button action part define a let property to save the instance of second view controller by defining with identifier.
7. Then once secondvc instance is declared then use that property to access the function defined in secondviewcontroller and pass the text value to that function.
8. So you pass the data to secondviewcontroller.

## Key-Value Observing

1. It will notify to the object change in the properties of other objects.
2. It is a cocoa programming pattern which notify to the object changes in the properties of other objects.
3. It is helpful when communicating between two different logically seperated parts like model and view.
4. key value observing can only be implemented in the class which inherit from NSObject.
5. kvo depends on obc runtime compiler,you need to use objc class that inherit from NSObject.

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

## Enums in swift?

1. Enumerations are defined with enum.
2. Enumerations are data types which contains named values called as a members.

## What are singletons and what's a good use case for them in iOS applications?

1. Singleton is a single class instance which you can access in your entire codebase.
2. A singleton class returns same instance how many times you request.
3. A singleton object provides a global point of access to the resources of its class.
4. Singleton is used where single point of control is desirable.
5. Singletons are objects that created once and can be shared everywhere they can used.

It is used for one to many communication. for example if we change something that is being observed by the other methods all the methods which is susbcribed to it will change. 
Example: UIDeviceBatteryStateDidChangeNotification

#### Disadvantages of singleton.

1. It is global statefullness.
2. once if project gets bigger then at some point you may need to reset it and sharing it through your whole app doesn't make any sense.

Example:

1. UI Application.
2. NSFile manager.

## What are clousures.. What is escaping and Non-Escaping?

1. Closures are self-contained blocks of functionality that can be passed around and used in our code.
   . An escaping closure is a closure that’s called after the function it was passed to returns. In other words, it outlives the function it was passed to.
   . A non-escaping closure is a closure that’s called within the function it was passed into, i.e. before it returns. This closure never passes the bounds of the function it was passed into.

## MVC vs MVVM

1. MVC stands for model,view,controller where M represents model, V represents UI, C represents Controller.
2. Data model is connected to view is through "Controller".
3. In MVC Controller directly manipulates data in given model.
4. In MVC View and Model doesn't need to know each other.

#### Drawback:

1. so when an application scales much larger and evolves into an operation with many related models, the amount of controllers used must grow.
2. where do you put a service object that does HTTP networking? It’s certainly not a view. Is it a model? Nope. Is it a controller? Hmm.. . not really a controller either.

#### MVVM

1. MVVM stands for Model,View and ViewModel.
2. Unlike mvc viewmodel is not a controller.it acts as binder that bind data between view and model.
3. it allows view and model to communicate each other directly.

#### Drawback:

1. Because it relies on data binding, the ViewModel consumes a considerable amount of memory in comparison to it’s controlling counterparts.

## Multithreading and Concurrency:

#### How to achieve concurrency in iOS

we can achieve concurrency in two ways.

1. Using Operations and OperationQueues.
2. Using Grand Central Dispatch(GCD).

#### GCD

Grand Central Dispatch is a multi-threaded code without manually creating and managing the threads themselves.

GCD is built on top of threads. Under the hood it manages a shared thread pool. With GCD you add blocks of code or work items to dispatch queues and GCD decides which thread to execute them on. Note that GCD decides how much parallelism is required based on the system and available system.

1. GCD can improve your app’s responsiveness by helping you defer computationally expensive tasks and run them in the background.

#### NSOperationQueue

NSOperationQueue regulates the concurrent execution of operations. It acts as a priority queue, such that operations are executed in a roughly First-In-First-Out manner, with higher-priority (NSOperation.queuePriority) ones getting to jump ahead of lower-priority ones. NSOperationQueue can also limit the maximum number of concurrent operations to be executed at any given moment, using the maxConcurrentOperationCount property.

## What is Core Data?

Core Data is one of the most popular frameworks provided by Apple for iOS and macOS apps. Core data is used to manage the model layer object in our application. You can treat Core Data as a framework to save, track, modify and filter the data within iOS apps, however, Core Data is not a Database.

## What is an object graph in Core Data?

An object graph is nothing more than a collection of objects that are connected with one another. The Core Data framework excels at managing complex object graphs. The Core Data framework takes care of managing the life cycle of the objects in the object graph.

## What is NSManagedObjectContext?

The NSManagedObjectContext object manages a collection of model objects, instances of the NSManagedObject class. It is possible for an application to have multiple managed object contexts. Each managed object context is backed by a persistent store coordinator.

## What is the core data stack?

Core Data consist of following stack objects:
A managed object model.
A managed object context.
A persistent store coordinator.
A persistent store (storage).

## Is Core Data == SQLite or some wrapper?

Core data API is provided by apple for persisting data in SQL, XML, file system. It is not same as SQLite which involves disk I/O (input/output) operations. Most of the time core data uses in-memory objects (managed object context).

## What types of stores does core data support?

Binary, XML, and SQLite.

## What is Entity Inheritance?

An entity is a class definition in Core Data. The classic example is an Employee or a Company. In a relational database, an entity corresponds to a table.
NOTE:- Be careful with entity inheritance when working with SQLite persistent stores. All entities that inherit from another entity exist within the same table in SQLite. This factor in the design of the SQLite persistent store can create a performance issue.

## What is an abstract entity in core data?

An Entity can be abstract, in which case it is never directly attached to a managed object.
An abstract object (in programming) or entity (in Core Data) is an object or entity that is never instantiated.
An entity is abstract if you will not create any instances of that entity. You typically make an entity abstract if you have a number of entities that all represent specializations of (inherit from) a common entity that should not itself be instantiated.
For example:- in the Employee entity, you could define Person as an abstract entity and specify that only concrete sub-entities (Employee and Customer) can be instantiated. By marking an entity as abstract in the Entity pane of the Data Model inspector, you are informing Core Data that it will never be instantiated directly.

## What is a fetchedResultcontroller?

A controller that you use to manage the results of a Core Data fetch request and display data to the user in UITableView.

## What is an NSManagedObjectId?

A managed object ID uniquely identifies the same managed object both between managed object contexts in a single application, and in multiple applications (as in distributed systems). Identifiers contain the information needed to exactly describe an object in a persistent store (like the primary key in the database), although the detailed information is not exposed. The framework completely encapsulates the “external” information and presents a clean object oriented interface.

## What is Persistent store?

A persistent store is a repository in which managed objects may be stored. You can think of a persistent store like a database data file where individual records each hold the last-saved values of a managed object. Core Data persistent store file are: binary, XML, and SQLite

## What is NSPersistentStoreCoordinator?

An object persists data to disk and ensures the persistent store(s) and the data model are compatible. It mediates between the persistent store(s) and the managed object context(s) and also takes care of loading and caching data. That’s right. Core Data has caching built-in.
Persistent Store Coordinator is actually the instances of “NSPersistentStoreCoordinator” class.

## Can we do Multithreading with core data?

We can do multithreading in core data with multiple contexts, example background context for long-running tasks (batch inserting/fetching/updating) and update UI on the main thread.

## What is the minimum necessary classes and the relationship between them?

We need NSManagedObject, NSManagedObjectContext and a Persistence store container. These classes/objects are the main building blocks of the core data stack.
Data operations like insert, update and delete are performed in managed object context. Managed object context can contain one or more managed object model instances. Persistence store coordinator communicates between managed object context and store.

## How to transfer manage object from one thread to another thread?

No, NSManagedObject instances are not intended to be passed between queues. Doing so can result in corruption of the data and termination of the application. When it is necessary to hand off a managed object reference from one queue to another, it must be done through NSManagedObjectID instances.
According to the Core Data concurrency rule, each thread must have its own managed object context. This is because NSManagedObjectContext and NSManagedObject, the two most fundamental objects in Core Data, is not thread-safe. They shouldn’t be initialized in one thread and accessed from a different thread.

## What is lazy initialization, how does this relate to core data, situations when this can be handy?

When working with core data it is recommended to use a lazy keyword for lazy initialization of persistent container.
Due to lazy keyword the object will be initialized only when accessed. It is memory efficient technique used with some of the classes like DateFormatter, Calendar also. It also suits a business requirement where you have a model with it’s attributes.

## Can the NSPersistentStoreCoordinator have more persistent stores?

Yes, but can’t create relationships between objects in different stores.

## How to read only a few attributes of an entity?

We can use the NSFetchRequest class’s property “setPropertiesToFetch”. We can pass an array of properties in string format in setPropertiesToFetch method.

## What is NSAsynchronousFetchRequest?

An asynchronous fetch allows developers to execute a fetch request without blocking the Managed Object Context for the duration of the fetch. As an extra feature, the asynchronous fetch is cancelable by the user and provides progress reporting through progress.
To fetch the data asynchronously in a background queue, Core Data provides the object NSAsynchronousFetchRequest.

## What is Faulting mechanism in Core Data?

“When you retrieve an object from an NSManagedObjectContext (MOC) you can’t tell (in the normal course of its use) whether it’s a fault or a realized object”. A fault will be converted into a realized object (“fired”) automatically by the Core Data framework in most cases when it is necessary to do so,
For example:- when accessing a property of the object. If you need to fire a fault yourself, you can do so by invoking its willAccessValueForKey: method with a nil argument.
♥♥️♥️When you retrieve an object from an NSManagedObjectContext (MOC) you can’t tell (in the normal course of its use) whether it’s a fault or a realized object*** — Yes we can, use –isFault

## What is NSManagedObjectModel?

❍ it contains information about the models or entities of the object graph, what attributes they have, and how they relate to one another.
❍ The NSManagedObjectModel object knows about the data model by loading one or more data model files during its initialization.

## What is an Attribute?

An attribute is a piece of information attached to a particular entity. For example, an Employee entity could have attributes for the employee’s name, position and salary. In a database, an attribute corresponds to a particular field in a table.

## What is the relationship?

A relationship is a link between multiple entities. In Core Data, relationships between two entities are called to-one relationships, while those between one and many entities are called to-many relationships.
For example:- a Manager can have a to-many relationship with a set of employees, whereas an individual Employee will usually have a to-one relationship with his manager.

## What is NSManagedObject?

An NSManagedObject is a run-time representation of a Core Data entity. You can read and write to its attributes using Key-Value Coding.

## What is Concurrency?

Concurrency is the ability to work with the data on more than one queue at the same time. If you choose to use concurrency with Core Data, you also need to consider the application environment.
For the most part, AppKit and UIKit are not thread-safe. In macOS in particular, Cocoa bindings and controllers are not threadsafe — if you are using these technologies, multithreading may be complex.
There are two concurrency types a managed object context can use:-
🌲 Private Queue Concurrency
🌲 Main Queue Concurrency

## What is Private Queue Concurrency?

Private 🗝 Queue specifies the context that will be associated with a private dispatch queue instead of the main queue. This is the type of queue you just used to move the export operation off of the main queue so it would no longer interfere with the UI.

## What is Main Queue Concurrency?

Main Queue, the default type, specifies that the context will be associated with the main queue. This type is what the main context (core data stack.mainContext) uses. Any UI operation, such as creating the fetched results controller for the table view, must use a context of this type.
Contexts and their managed objects must only be accessed from the correct queue. NSManagedObjectContext has perform(_:) and performAndWait(_:) to direct work to the correct queue.

## What is Wrappers?

Wrapper libraries provide some much needed syntactic sugar and convenience methods to Core Data’s verbose and complicated APIs.
For example:- to insert a new managed object into a managed object context, it’s a class method.

## What are Synchronizers in Core data?

Whereas adapters synchronize information through an existing, general-purpose interface such as REST, synchronizers use a more direct protocol, offering better integration and performance at the expense of portability and generality.

## Clean way to save observers on Core Data objects?

Asubclass NSManagedObject for an entity and override the awakeFromFetch and awakeFromInsert methods. the awakeFromInsert gets called when you first insert the entity, so you could move your existing code to add the observers to there. The awakeFromFetch is where you would add the observers when fetching.

## What is the difference between transformable and binary data?

With a transformable attribute, you read and write instances of any class that can be converted to and from NSData. The actual data storage is the same as with a binary attribute, but Core Data uses an NSValueTransformer to convert to/from NSData when necessary.
For example:- say your managed object has an image attribute where it would be convenient to read and write UIImage directly. Except, UIImage can’t be saved in Core Data. But UIImage can be converted to and from NSData. So, if you used a transformable attribute you could read and write UIImage while still keeping NSData in the data store.

## How can I encrypt Core-Data contents on an iPhone?

You can encrypt individual properties in your Core Data model entities by making them transformable properties, then creating an NSValueTransformer subclass which will encrypt and decrypt the data for that property. While this is not the whole-database decryption that you’re looking for, it will have a much lower memory footprint than decrypting an entire database into memory. Additionally, it will allow the decryption to be done lazily, rather than all upfront, so your application will load much faster. Depending on the encryption used, I would even expect that the on-disk data accesses for loading each entity would be slower than the decryption process for the properties, so you won’t see that much of a performance penalty when accessing the properties.
Transformable properties like this are very easy to use because you read and write to them as normal, while the encryption/decryption goes on behind the scenes.

## How to Save custom class into Core data?

You have a couple of options:
👉🏻 Don’t tell Core Data how to transform the data. In this case, Core Data will attempt to call encodeWithCoder: on your object to convert it to NSData. That’s why you get the error that mentions this method — it’s trying to call the method on your class, but that method doesn’t exist. In this case, your class must conform to NSCoding for the transformation to occur.
👉🏻 Tell Core Data on how to transform the data. In this case you create a subclass of NSValueTransformer that performs the transformation. You configure this on the attribute, either in the Core Data model editor or in code. In this case, you must have a custom transformer class that knows how to perform the transformation.

## What is transformable in core data?

Transformable attributes are useful for storing non standard object types within Core Data.
For Example:- I provide code Below that lets you store UIImages as An Attribute within core data. The image Data is Converted to and From an NSData Instance that contains the image’s PNG Representation .this is all handled transparently for you by a custom NSValueTransformer.

## What is Uniquing?

Core Data ensures that — in a given managed object context — an entry in a persistent store is associated with only one managed object. The technique is known as Uniquing. Without uniquing, you might end up with a context maintaining more than one object to represent a given record.

## What is an Entity?

A Managed object model allows core data to map from records in a persistent store to managed objects that you use in your Application. The model is a collection of entity description objects(instance of NSEntityDescription).

## How to synchronize contexts?

The Core Data framework uses notifications to notify objects of changes taking place in a managed object context. Every managed object context posts three types of notifications to notify objects about the changes taking place in the managed object context:

1. NSManagedObjectContextObjectsDidChangeNotification

2. NSManagedObjectContextWillSaveNotification

3. NSManagedObjectContextDidSaveNotification

4. Managed Object Context Did Change
   The NSManagedObjectContextObjectsDidChangeNotification notification is broadcast every time a managed object in the managed object context changes. Every time a managed object is inserted, updated, or deleted from a managed object context, the managed object context posts an NSManagedObjectContextObjectsDidChangeNotification notification.
   ☄️ Managed Object Context Will Save
   As the name of the NSManagedObjectContextWillSaveNotification notification suggests, this notification is posted before a save operation is performed.
   ☄️Managed Object Context Did Save
   The managed object context performing the save operation posts an NSManagedObjectContextDidSaveNotification notification after successfully saving its changes.

## what is the Difference between core data and SQLite?

### SQLite:

1. SQLite is database itself like we have SQL Server.
2. Have Data Constraints features.
3. Operates on data, store in Disk.
4. Can Drop table and Edit data Without loading them in memory.
5. Slow as Compared to core data.

### CoreData:

1. core data is ORM(Object graph model) which create a layer between the database and the UI. It speeds up the process of interaction as we don’t have to Write Queries, just work with ORM and let ORM handled the backend. For save or retrieval of large data because of it’s abilities to handle the less processing speed of the device.
2. Don’t have Data Constraints if required need to implement by business logic.
3. Operates on in memory(data needs to be loaded from disk to memory)
4. Need to load entire data if we need update drop table.

## What is Transient Property?

Transient properties are properties on an NSManagedObject that are not persisted t the object-store. They are calculated at runtime, usually on the basis of other property Values.

## How is memory management handled on iOS?

1. Memory is managed in swift using ARC which is defined as automatic reference counting.
2. By default all the references are strong references.
3. With strong references you cant deallocate the memory.
4. To overcome this, we use weak references.

## What is Delegate?

1. Delegate is a design pattern where class or struct can pass there responsibilities to another instance.
2. This design pattern can be implemented by defining protocol and confirming to there methods and properties.
3. Where only one object can observe events coming from another object.Delegate pattern is a one-to-one relationship.
4. Delegate pattern is the variation of the observer pattern.
5. Delegate allows sending message from one object to another object.

## What is a protocol?

1. Protocol are declarations where a adapter should implement.
2. A protocol has a method,properties & operators which a adapter can implement.
3. Methods doesn't have any functionality.What ever the adapter implements can use and build functionality for that method.
4. By default everything in swift is required methods. 

## What is the difference between Delegates and Notifications?

1. Delegates create relationship between two classes. It supports two-way communication i.e. we can return the value and it also has a chance to modify or reject the operations as well. It checks protocol methods implementation at compile time. Only one designated object can listen the message. Similar to the telephonic conversation.
2. Notification based on one to many communication. It cannot receive feedback and have no link between the objects to communicate back and forth. There is no compile time checking for method implementation. Any number of the object can receive the message.
3. Delegates are usually a more appropriate way of handling things, especially if you're creating a framework for others to use. You gain compile time checking for required methods when you use protocols with your delegates, so you know when you compile if you're missing any required methods. With NSNotificationCenter you have no such guarantee.

## What is VIPER architecture?

VIPER is a backronym for View, Interactor, Presenter, Entity, and Router.

1. View: The responsibility of the view is to send the user actions to the presenter and shows whatever the presenter tells it.
2. Interactor: This is the backbone of an application as it contains the business logic.
3. Presenter: Its responsibility is to get the data from the interactor on user actions and after getting data from the interactor, it sends it to the view to show it. It also asks the router/wireframe for navigation.
4. Entity: It contains basic model objects used by the Interactor.
5. Router: It has all navigation logic for describing which screens are to be shown when. It is normally written as a wireframe.

## **Computed Properties:**

1. Computed properties are properties which do caluculation before returning the value.

2. Stored properties can be variable or constant, Computed properties must be variable.

3. Computed properties required type. So that compiler will know that what type a return value expected.

4. Computed properties doesn't stored any value.

5. Consider a example to know the screen inches. we will have width and height to caluculate screen inches we need caluculate the diagonal of the screen. Based on that we can find the inches of TV for this best way we use is computed properties and return a value.
