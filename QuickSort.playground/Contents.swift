import UIKit

// Quick Sorting
"""
Quick Sort (O(n log n))
How it works: Picks a pivot, partitions elements, and recursively sorts each side.
Best Case: O(n log n)
Worst Case (Already Sorted): O(n²)
Best for: General-purpose sorting with randomized pivots.
"""

func quickSort(_ inputArray: [Int]) -> [Int] {
    guard inputArray.count > 1 else { return inputArray }
   
    let pivot = inputArray[inputArray.count / 2]
    let left = inputArray.filter { $0 < pivot }
    let middle = inputArray.filter { $0 == pivot }
    let right = inputArray.filter { $0 > pivot }

    return quickSort(left) + middle + quickSort(right)
}

let sortedArray = quickSort([5,3,12,34,21,2])
print(" Quick sorting data: \(sortedArray)")
