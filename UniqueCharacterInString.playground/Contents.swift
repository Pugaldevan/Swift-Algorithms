import UIKit

// Given a string to find the unique characters

func checkUnique(_ text: String) -> Bool {
    guard text.count > 0 else { return false }
    var storeDict = [Character: Bool]()
    
    for chc in text {
        if storeDict[chc] != nil { // Checking dictionary if the value exsit or not
            print("Stored1111 Dict: \(storeDict)")
            return false
        }
        storeDict[chc] = true
    }
    print("Stored Dict: \(storeDict)")
    return true
}

checkUnique("Testll")
checkUnique("abbaccd")
checkUnique("abcd")
