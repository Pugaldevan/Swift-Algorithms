import UIKit

// Selection Sorting
"""
Selection Sort (O(n²))
How it works: Finds the smallest element and swaps it with the first unsorted element.
Best Case: O(n²)
Worst Case: O(n²)
Best for:  When swaps are costly.
"""

func selectionSort(_ inputArray: [Int]) -> [Int]{
    guard inputArray.count > 1 else { return inputArray }
    let n = inputArray.count
    var resultArray = inputArray
    for i in 0..<n - 1 {
        var minIndex = i
        for j in i + 1..<n {
            if resultArray[j] < resultArray[minIndex] {
                minIndex = j
            }
        }
        resultArray.swapAt(i, minIndex)
    }
    return resultArray
}

let sortedArray = selectionSort([5,3,12,34,21,2])
print("Selection sorting data: \(sortedArray)")
