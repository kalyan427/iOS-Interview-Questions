/* Take three numbers from the user and print the greatest number. Go to the editor
 
 Test Data
 Input the 1st number: 25
 Input the 2nd number: 78
 Input the 3rd number: 87
 Expected Output :
 The greatest: 87 */

import UIKit

var value1: Int = 25
var value2: Int = 78
var value3: Int = 87

if (value1 > value2 && value1 > value3) {
    print("value1 is greater")
} else if (value2 > value1 && value2 > value3) {
    print("value2 is greater")
} else {
    print("value3 is greater")
}



