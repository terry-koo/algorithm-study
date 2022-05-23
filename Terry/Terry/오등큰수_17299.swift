//
//  main.swift
//  Terry
//
//  Created by Terry Koo on 2022/05/18.
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

var n = Int(readLine()!)!
//var inputs = Array(readLine()!.map{Int(String($0))!}) // Character type으로 받아서 String으로 변환하고 Int
//var inputs = readLine()!.components(separatedBy: " ").map({Int($0)!})
var inputs = readLine()!.split(separator: " ").map({Int($0)!})
var result = Array(repeating: -1, count: inputs.count)
var stack = Stack<Int>()

var f = Array(repeating: 0, count: inputs.max()!)

for i in 0..<inputs.count {
    f[inputs[i]-1] += 1
}



for i in 0..<inputs.count {
    print("[start]---------[\(i)]")
    if stack.empty == 1 {
        print("push: \(i)")
        stack.push(i)
        print(stack)
    } else {
        print("else:  input--\(f[inputs[i]-1]) > stack.top-\(f[inputs[stack.top()!]-1])")
        while f[inputs[i]-1] > f[inputs[stack.top()!]-1] {
            print("while: index[\(stack.top()!)] = \(inputs[i])")
            result[stack.pop()!] = inputs[i]
            print("result: \(result)")
        }
        print("push: \(i)")
        stack.push(i)
        print(stack)
    }
    print("[finish]--------[\(i)]")
}

//print(result)
print(result.map{String($0)}.joined(separator: " "))


