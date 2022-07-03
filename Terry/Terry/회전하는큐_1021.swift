//
//  main.swift
//  Terry
//
//  Created by Terry Koo on 2022/06/26.
//

import Foundation

struct RotatingQueue {
    var elements: [Int] = [Int]()
    
    mutating func push(element: Int){
        elements.insert(element, at: 0)
    }
    
    mutating func popFirst() -> Int {
        return elements.count == 0 ? -1 : elements.removeFirst()
    }
    
    mutating func popLastPushFirst() {
        elements.insert(elements.removeLast(), at: 0)
    }
    
    mutating func popFirstPushLast() {
//        elements.insert(elements.removeFirst(), at: elements.count)
        var element = elements.removeFirst()
        elements.insert(element, at: elements.count)
    }
    
    func size() -> Int {
        return elements.count
    }
    
    func empty() -> Int {
        return elements.count == 0 ? 1 : 0
    }
    
    func front() -> Int {
        return elements.count == 0 ? -1 : elements.first!
    }
    
}


var firstInput = readLine()!.split(separator: " ").map{ Int($0)! }
var secondInput = readLine()!.split(separator: " ").map{ Int($0)! }
var count: Int = 0

var queue: RotatingQueue = RotatingQueue()

for i in (1..<(firstInput[0]+1)).reversed() {
    queue.push(element: i)
}


 
for i in secondInput {
    while i != queue.front() {
        if Double(queue.elements.firstIndex(of: i)!+1) < (Double(queue.size())/Double(2))+1 {
            queue.popFirstPushLast()
        } else {
            queue.popLastPushFirst()
        }
        count += 1
    }
    queue.popFirst()
}

print(count)
