import UIKit

// Rotate array with left based on the input

func rotateArrayWithLeftSolution(inputArray: [Int], input: Int) -> [Int] {
    guard !inputArray.isEmpty else { return [] }
    guard input > 0 else { return inputArray }
    var resultArray = inputArray
    for i in 1...input {
        resultArray = rotateSingleWithLeftElement(inputArray: resultArray)
    }
    return resultArray
}

func rotateSingleWithLeftElement(inputArray: [Int]) -> [Int] {
    var resultArray = Array<Int>(repeating: 0, count: inputArray.count)
    
    for i in 0..<inputArray.count - 1 {
        resultArray[i + 1] = inputArray[i]
    }
    resultArray[0] = inputArray.last ?? 0
    return resultArray
}

rotateArrayWithLeftSolution(inputArray: [1,2,3,4,5], input: 1) // 5 1 2 3 4


// Rotate array with right based on the input

func rotateArrayWithRightElement(inputArray: [Int], input: Int) -> [Int] {
    guard !inputArray.isEmpty else { return [] }
    guard input > 0 else { return inputArray }
    var resultArray = inputArray
    for i in 1...input {
        resultArray = rotateSingleWithRightElement(inputArray: resultArray)
    }
    return resultArray
}

func rotateSingleWithRightElement(inputArray: [Int]) -> [Int] {
    var resultArray = Array<Int>(repeating: 0, count: inputArray.count)
    for i in 0..<inputArray.count - 1 {
        resultArray[i] = inputArray[i+1]
    }
    resultArray[inputArray.count - 1] = inputArray[0]
    return resultArray
}

rotateArrayWithRightElement(inputArray: [1,2,3,4,5], input: 2) // 3 4 5 1 2
