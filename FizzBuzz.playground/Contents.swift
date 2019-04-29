import UIKit

// SWIFT 5
(1...100).forEach{ (num) in
    switch(true){
    case(num.isMultiple(of : 15)):
        print("\(num) is FizzBuzz")
    case(num.isMultiple(of : 5)):
        print("\(num) is Buzz")
    case(num.isMultiple(of : 3)):
        print("\(num) is Fizz")
    default:
        print("\(num)")
    }
}

// SWIFT 4
var numbers : [Int] = []
for i in 1...100{
    numbers.append(i)
}
for num in numbers{
    if num % 15 == 0
    {
        print("\(num) is FizzBuzz")
    }
    else if num % 3 == 0
    {
        print("\(num) is Fizz")
    }
    else if num % 5 == 0
    {
        print("\(num) is Buzz")
    }
    else
    {
        print("\(num)")
    }
}
