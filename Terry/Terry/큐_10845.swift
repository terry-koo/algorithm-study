//
//  main.swift
//  Terry
//
//  Created by Terry Koo on 2022/04/30.
//

import Foundation

struct Queue {
    private var elements: [Int] = [Int]()
    
    mutating func push(element: Int){
        elements.insert(element, at: 0)
    }
    
    mutating func pop() -> Int {
        return elements.count == 0 ? -1 : elements.removeLast()
    }
    
    func size() -> Int {
        return elements.count
    }
    
    func front() -> Int {
        return elements.count == 0 ? -1 : elements.last!
    }
    
    func back() -> Int {
        return elements.count == 0 ? -1 : elements.first!
    }
    
    func empty() -> Int {
        return elements.count == 0 ? 1 : 0
    }
    
}

var n = Int(readLine()!)!
var queue = Queue()
for _ in 0..<n {
    let command = readLine()!.components(separatedBy: " ")
    
    switch command[0] {
    case "push":
        queue.push(element: Int(command[1])!)
    case "pop":
        print(queue.pop())
    case "front":
        print(queue.front())
    case "back":
        print(queue.back())
    case "size":
        print(queue.size())
    case "empty":
        print(queue.empty())
    default:
        print("default")
        
    }
}

