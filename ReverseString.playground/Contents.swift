import UIKit

//Mark:- Reverse string

func makeReverseString(input: String) -> String {
    var reverseStr = ""
    
    for characters in input {
        reverseStr = String(characters) + reverseStr
    }
    return reverseStr
}

makeReverseString(input: "Testing") //gnitseT
 
