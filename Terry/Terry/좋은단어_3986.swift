//
//  main.swift
//  Terry
//
//  Created by Terry Koo on 2022/07/03.
//

import Foundation

public struct Stack<T> {
    private var elements = [T]()
    
    public mutating func pop() -> T? {
        return self.elements.popLast()
    }
    
    public mutating func push(_ element: T) {
        self.elements.append(element)
    }
    
    public func top() -> T? {
        return self.elements.last
    }
    
    public var empty: Int {
        return self.elements.isEmpty ? 1 : 0
    }
    
    public var size: Int {
        return self.elements.count
    }
}

var input = Int(readLine()!)!
var count = 0

for i in 0..<input {
    var stack: Stack<Character> = Stack<Character>()
    
    let word = Array(readLine()!)
    for i in 0..<word.count {
        if stack.empty == 1 {
            stack.push(word[i])
        } else if stack.top() == word[i] {
            stack.pop()
        } else {
            stack.push(word[i])
        }
    }
    if stack.empty == 1 {
        count += 1
    }
}

print(count)
