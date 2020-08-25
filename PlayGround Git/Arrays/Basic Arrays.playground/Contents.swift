

/* Topics Covered.
    1.creating an array.
    2.counts number of elements in array.
    3.checks an array is empty or not.
    4.adding element to array.
    5.adding element to particular index.
    6.accessing the elements at particular index.
    7.removing element at particular index.
    8.Iterating over loop.
    9.One-sided range operator.
 */

// Creating an Array.
var shoppingList = ["Eggs","Milk"]

// count returns the number of items in an array.
shoppingList.count
print("\(shoppingList.count)")

//checks is array is empty or not.
shoppingList.isEmpty

// Adding element to the end of the array.
shoppingList.append("veggies")
shoppingList

// adding element to particular index.
shoppingList.insert("oil", at: 1)
shoppingList

// accessing the elements at particular index.
shoppingList[1]

// removing element at particular index.
shoppingList.remove(at: 1)
shoppingList

// Iterating over loop.
for i in shoppingList {
    print("values in array \(i)")
}

// One-sided range operator.
for n in shoppingList[1...] {
    print("one sided range values \(n)")
}










