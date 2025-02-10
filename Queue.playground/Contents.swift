import UIKit

// Queue FIFO

struct Queue<T> {
    
    private var elements:[T] = []
    
    mutating func enqueue(_ element: T) {
        elements.append(element)
    }
    
    mutating func dequeue() -> T?{
        return elements.removeFirst()
    }
    
    func peek() -> T? {
        return elements.first
    }
    
    func isEmpty() -> Bool{
        return elements.isEmpty
    }
}

var queueData = Queue<Int>()
queueData.enqueue(10)
queueData.enqueue(20)
queueData.enqueue(30)
print("Enqueue: \(queueData)")

print(queueData.peek() ?? 0)
print(queueData.isEmpty())

queueData.dequeue()
print("Dequeue: \(queueData)")

queueData.dequeue()
print("Dequeue: \(queueData)")
