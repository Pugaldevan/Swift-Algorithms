import UIKit

//Mark:- Check Palindrome

func checkPalindrome(_ text: String) -> Bool {
    guard text.count != 0 else { return false }
    var reverseChar = ""
    for charcters in text {
        reverseChar = String(charcters) + reverseChar
    }
    return reverseChar == text ? true : false
}

checkPalindrome("aba")
checkPalindrome("mom")
checkPalindrome("dad")
checkPalindrome("radar")
checkPalindrome("rush")
checkPalindrome("yes")
