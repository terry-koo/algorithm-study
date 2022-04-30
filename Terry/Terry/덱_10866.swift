//
//  main.swift
//  Terry
//
//  Created by Terry Koo on 2022/05/01.
//

import Foundation

struct Deque {
    private var elements = [Int]()
    
    mutating func push_front(element: Int){
        elements.insert(element, at: 0)
    }
    
    mutating func push_back(element: Int){
        elements.append(element)
    }
    
    mutating func pop_front(){
        print(elements.count != 0 ? elements.removeFirst() : -1)
    }
    
    mutating func pop_back(){
        print(elements.count != 0 ? elements.removeLast() : -1)
    }
    
    func size(){
        print(elements.count)
    }
    
    func empty(){
        print(elements.count != 0 ? 0 : 1)
    }
    
    func front(){
        print(elements.count != 0 ? elements.first! : -1)
    }
    
    func back(){
        print(elements.count != 0 ? elements.last! : -1)
    }
}


var n = Int(readLine()!)!
var deque = Deque()
for _ in 0..<n {
    let command = readLine()!.components(separatedBy: " ")
    
    switch command[0] {
    case "push_front":
        deque.push_front(element: Int(command[1])!)
    case "push_back":
        deque.push_back(element: Int(command[1])!)
    case "pop_front":
        deque.pop_front()
    case "pop_back":
        deque.pop_back()
    case "size":
        deque.size()
    case "empty":
        deque.empty()
    case "front":
        deque.front()
    case "back":
        deque.back()
    default:
        print("default")
    }
}
