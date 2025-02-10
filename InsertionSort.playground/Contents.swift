import UIKit

// Insertion Sorting
"""
Insertion Sort (O(n²))
How it works: Picks an element and places it at the correct position in the sorted part.
Best Case (Nearly Sorted): O(n)
Worst Case: O(n²)
Best for:  Small datasets, nearly sorted data.
"""

func insertionSort(_ inputArray: [Int]) -> [Int]{
    guard inputArray.count > 1 else { return inputArray }
    let n = inputArray.count
    var resultArray = inputArray
    for i in 1..<n {
        let key = resultArray[i]
           var j = i - 1
           while j >= 0 && resultArray[j] > key {
               resultArray[j + 1] = resultArray[j]
               j -= 1
           }
        resultArray[j + 1] = key
       }
    return resultArray
}

let sortedArray = insertionSort([5,3,12,34,21,2])
print("Insertion sorting data: \(sortedArray)")
