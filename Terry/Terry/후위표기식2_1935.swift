// 1935 후위 표기식2

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
var arr = Array(readLine()!).map({String($0)})
var stack = Stack<String>()

var inputs = [Int]()
for i in 0..<n {
    inputs.append(Int(readLine()!)!)
}


//var i = 0
//while i != arr.count {
//    switch arr[i] {
//    case "+":
//        i += 1
//        print("i 연산자 : \(i)")
//    case "A"..."Z", "0"..."100":
//        let temp = arr[i]
//        let num = readLine()!
//        for j in 0..<arr.count {
//            if temp == arr[j] {
//                arr[j] = num
//                print("i 숫자 : \(i)")
//            }
//        }
//        i += 1
//    default:
//        print("default i : \(i) , arr.cout \(arr.count) , arr[i] \(arr[i])")
//    }
//}


//print(inputs)

var first: Double
var second: Double

for i in 0..<arr.count {
    switch arr[i] {
    case "*":
        second = Double(stack.pop()!)!
        first = Double(stack.pop()!)!
        stack.push(String(first * second))
    case "+":
        second = Double(stack.pop()!)!
        first = Double(stack.pop()!)!
        stack.push(String(first + second))
    case "-":
        second = Double(stack.pop()!)!
        first = Double(stack.pop()!)!
        stack.push(String(first - second))
    case "/":
        second = Double(stack.pop()!)!
        first = Double(stack.pop()!)!
        stack.push(String(first / second))
    case "A"..."Z":
        stack.push(String(inputs[Int(Character(arr[i]).asciiValue!)-65]))
    default:
        print("default!!")
    }
   // print("i : \(i), stack : \(stack)")
}

print(String(format: "%.2f", Double(stack.pop()!)!))



