import UIKit

// Fibonacci series

func fibonacciNaive(input: Int) -> Int {
    if input == 0 {
        return 0
    }
    else if input == 1{
        return 1
    }
    else {
        let input1 = fibonacciNaive(input: input - 1)
        let input2 = fibonacciNaive(input: input - 2)
//        print("input1 is \(input1) ||||| \(input2)") // 1 1 2 3 5
        return  input1 + input2
    }
}

fibonacciNaive(input: 6) // 8

// Memoiaztion

/* Memoization is a technique to optimize recursive algorithms by storing the results of previously computed subproblems to avoid redundant calculations. */

func checkFibonacciSeriesWithMemo(_ input: Int) -> Int {
    var memo = [Int : Int]()
    if input == 0 { return 0 }
    else if input == 1 { return 1 }
    if let result = memo[input] {
        print("Previous stored result : \(result)")
        return result
    }
    memo[input] = checkFibonacciSeriesWithMemo(input - 1) + checkFibonacciSeriesWithMemo(input - 2)
    return memo[input] ?? 0
}

checkFibonacciSeriesWithMemo(5) // 5
