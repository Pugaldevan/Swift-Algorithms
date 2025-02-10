import UIKit

// Mark:- STACK [LIFO]

struct Stack<T>{
    private var elements: [T] = []
    
    mutating func push(_ element: T) {
        elements.append(element)
    }
    
    mutating func pop() -> T?{
        return elements.popLast()
    }
    
    func peek() -> T? {
        return elements.last
    }
    
    func isEmpty() -> Bool{
        return elements.isEmpty
    }
}

var stackData = Stack<Int>()
stackData.push(10)
stackData.push(20)
stackData.push(30)
print("stack Push: \(stackData)")

print(stackData.peek() ?? 0)
print(stackData.isEmpty())

stackData.pop()
stackData.pop()
print("stack Pop: \(stackData)")
