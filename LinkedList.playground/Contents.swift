import UIKit

// LinkedList =>  consists of node and each node points to the next one
// Create a node = > Each node holds a value and reference to the next node.

class Node<T> {
    var value: T
    var next: Node?
    
    init(value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

class LinkedList<T> {
    
    var head: Node<T>?
    
    // APpend function(add a new node)
    func append(_ value: T) {
        
        let newNode = Node(value: value)
        if let lastNode = getLastNode() {
            lastNode.next = newNode
        }
        else {
            head = newNode
        }
    }
    // Get last node funtion
    private func getLastNode() -> Node<T>? {
        var node = head
        while node?.next != nil {
            node = node?.next
        }
        return node
    }
    // Display the list
    func display() {
        var node = head
        while node != nil {
            print(node!.value, terminator: " -> ")
            node = node?.next
        }
        print("nil")
    }
}

let list = LinkedList<Int>()
list.append(10)
list.append(20)
list.append(30)
list.append(40)

list.display() // Output: 10 -> 20 -> 30 -> 40 -> nil
