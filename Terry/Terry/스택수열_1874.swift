//
//  main.swift
//  Terry
//
//  Created by Terry Koo on 2022/04/25.
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

var n: Int = Int(readLine()!)!

var stack: Stack<Int> = Stack<Int>()
var symbol: [String] = [String]()
var result: [Int] = [Int]()
var fin: Bool = false
var count: Int = 1




for _ in 1...n {
    if !fin {
        let input = Int(readLine()!)!
        
        if input > count {
            while input != count {
                symbol.append("+")
                stack.push(count)
                count += 1
            }
            if input == count {
                symbol.append("+")
                stack.push(count)
                symbol.append("-")
                result.append(stack.pop()!)
                count += 1
            }
        } else if count == input {
            symbol.append("+")
            stack.push(count)
            symbol.append("-")
            result.append(stack.pop()!)
            count += 1
        } else if count > input {
            if count-1 == input {
                symbol.append("-")
                result.append(stack.pop()!)
            } else {
                var copyCount = count

                while copyCount != input {
                    copyCount = copyCount - 1
                    if copyCount == input{
                       break
                    } else {
                        if result.filter({ $0 == (copyCount)}).isEmpty {
                            print("NO")
                            fin = true
                            break
                        }
                    }
                }
                symbol.append("-")
                result.append(stack.pop()!)
            }
        }
    }
}

if !fin {
    for i in 0 ..< symbol.count {
        print(symbol[i])
    }
}


