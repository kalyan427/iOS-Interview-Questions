#### Classes Vs Struct

##### Description:

###### Class:
 Class are` reference type`.for example consider google sheets which shared to 2 persons.if person1 modifies the sheet then person2 sees the same value in google sheet because it modifies parent class.
 
 ###### Struct:
 - Struct are `value type`.for example consider microsoft docs which shared to 2 persons through email.if both persons download to there local machine.then if person1 modifies the document then it doesn't modifies in person2 document.
 - if you use struct parent class into two subclass.if you modify in one subclass it doesn't modifies in parent class and in another subclass.


    
    
    class Animal1 {
        var health1 = 100
        var legs1 = 4
    
        func move() {
            print("i can move")
        }
    }
    
    var cat = Animal1()
    cat.health1 = 20
    print(cat.health1)
    print(cat.legs1)
    
    let dog = cat
    print(cat.health1)
    
    
    
    struct Animal2 {
        var health2 = 50
        var legs2 = 6
    
        func jump() {
            print("i can jump")
        }
    }
    
    var sampleStruct = Animal2()  //replace var with let to see subclass cannot able to modify parent class.you can see error popup.
    sampleStruct.health2 = 30
    print(sampleStruct.health2)
    
    let sampleStruct2 = Animal2()
    print(sampleStruct2.health2)

------------
### App LifeCycle

##### Description:
Application life cycle methods contain 6 methods which are responsible for handling the app in various ways. For example If the user clicks on home button the app will got to home page then if we want to do any stuff then we can utilize these methods like `applicationDidEnterBackground` for doing background stuff.

These Methods are

1. applicationDidFinishLaunchingWithOptions.
1. applicationWillEnterForeground.
1. applicationDidBecomeActive.
1. applicationWillResignActive.
1. applicationDidEnterBackground.
1. applicationWillTerminate.


Detail Explanation: 
-  Initially, when you run your application, the `first method in the app` that will invoke is `applicationdidFinishLaunchingWithOptions,` then you can see the InitialViewController (Note: `applicationDidBecomeActive`will be called after `applicationdidFinishLaunchingWithOptions` because the app is becoming active ). Any business logic that we want to do as soon as app launch then we will keep that code in this method.
-  In the next step, it comes into the `applicationDidBecomeActive` method.
- when you click the home button, then the `applicationWillResignActive` method is called.
-  if you open the application from the home button. Then the `applicationDidEnterBackground` method is called. 
-  in the next step, it enters into the "`applicationWillEnterForeground` method .then it calls the `applicationDidBecomeActive` method.
------------
### View LifeCycle 

