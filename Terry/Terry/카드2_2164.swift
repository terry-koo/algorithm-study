//
//  main.swift
//  Terry
//
//  Created by Terry Koo on 2022/05/18.
//
import Foundation

// 시간초과
//struct Queue {
//    private var elements: [Int] = [Int]()
//
//    mutating func push(element: Int){
//        elements.insert(element, at: 0)
//    }
//
//    mutating func pop() -> Int {
//        return elements.count == 0 ? -1 : elements.removeLast()
//    }
//
//    func size() -> Int {
//        return elements.count
//    }
//
//    func front() -> Int {
//        return elements.count == 0 ? -1 : elements.last!
//    }
//
//    func back() -> Int {
//        return elements.count == 0 ? -1 : elements.first!
//    }
//
//    func empty() -> Int {
//        return elements.count == 0 ? 1 : 0
//    }
//}
//
//var n = Int(readLine()!)!
//var queue = Queue()
//
//for i in 1..<n+1 {
//    queue.push(element: i)
//}
//
//while queue.size() != 1 {
//    queue.pop()
//    queue.push(element: queue.pop())
//}
//print(queue.pop())



var n = Int(readLine()!)!
var arr: [Int] = [Int]()
for i in 1..<n+1{
    arr.append(i)
}

var index = 0
var lastIndex = n-1

if n == 1 {
    print(1)
} else {
    for i in 0..<n-1 {
        index += 1
        if index == lastIndex {
            print(arr[index])
            break
        }
        arr.append(arr[index])
        
        index += 1
        lastIndex += 1
    }
}

