import UIKit

/* Given 2 arrays contains any common characters or not*/
// O(n^2)
func compareTwoArrays(_ firstArray: [Int], _ secondArray: [Int]) -> Bool{
    
    for i in 0..<firstArray.count {
        for j in 0..<secondArray.count {
            if firstArray[i] == secondArray[j] {
                return true
            }
        }
    }
    return false
}

compareTwoArrays([1,2,3], [1,2,3])
compareTwoArrays([1,2,3], [4,5,6])

// Convert to has map, lookup via other index

func commonItemHash(_ firstArray: [Int], _ secondArray: [Int]) -> Bool{
    
    var hashA = [Int: Bool]()
    
    for i in firstArray { // O(n)
        hashA[i] = true
    }
    
    for i in secondArray {
        if hashA[i] == true {
            return true
        }
    }
    return false
}
commonItemHash([1,2,3], [1,2,3])
commonItemHash([1,2,3], [4,5,6])
