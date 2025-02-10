import UIKit

// Merge Sorting
"""
Merge Sort (O(n log n))
How it works: Recursively divides the array into halves, sorts them, and merges them.
Best & Worst Case: O(n log n)
Best for: Large datasets where stability is needed.
"""

func mergeSort(_ inputArray: [Int]) -> [Int] {
    guard inputArray.count > 1 else { return inputArray }

    let mid = inputArray.count / 2
    let left = mergeSort(Array(inputArray[..<mid]))
    let right = mergeSort(Array(inputArray[mid...]))

    return merge(left, right)
}

func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var result: [Int] = []
    var i = 0, j = 0

    while i < left.count && j < right.count {
        if left[i] < right[j] {
            result.append(left[i])
            i += 1
        } else {
            result.append(right[j])
            j += 1
        }
    }

    return result + left[i...] + right[j...]
}
let sortedArray = mergeSort([5,3,12,34,21,2])
print(" Merge sorting data: \(sortedArray)")
