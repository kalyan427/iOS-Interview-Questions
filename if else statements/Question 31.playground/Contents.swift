import UIKit

var value1: Int = 1
var value2: Int = 2
var value3: Int = 3

if (value1 > value2 && value1 > value3) {
    print("Increasing Order")
} else if (value3 > value2 && value3 > value1) {
    print("Decreasing Order")
} else {
    print("NOR Increasing or Decreasing")
}

