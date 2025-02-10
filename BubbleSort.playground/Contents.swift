import UIKit

// Bubble Sorting
"""
Bubble Sort (O(n²))
How it works: Repeatedly compares and swaps adjacent elements if they are in the wrong order.
Best Case (Already Sorted): O(n)
Worst Case: O(n²)
Best for: Small datasets, nearly sorted data.
"""

func bubbleSort(_ inputArray: inout [Int]) -> [Int]{
    guard inputArray.count > 1 else { return inputArray }
    let n = inputArray.count
    for i in 0..<n {
        for j in 0..<n - i - 1 {
            if inputArray[j] > inputArray[j + 1] {
                inputArray.swapAt(j, j + 1)
            }
        }
    }
    return inputArray
}
var input = [5,3,12,34,21,2]
let sortedArray = bubbleSort(&input)
print("Bubble sort: \(sortedArray)")
