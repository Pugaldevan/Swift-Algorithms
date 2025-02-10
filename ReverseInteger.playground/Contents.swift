import UIKit

//Mark:- Reverse Integer

func checkReverseInteger(_ input: Int) -> Int {
    var x = input
    var isNegative: Bool = false
    if x < 0 {
        x = abs(x)
        isNegative = true
    }
    var reverse = 0
    var lastDigit  = 0
    
    while x >= 1 {
        lastDigit = x % 10
        reverse = reverse * 10 + lastDigit
        x = x / 10
    }
    return isNegative ? reverse * -1 : reverse
}

checkReverseInteger(-1234) // -4321
