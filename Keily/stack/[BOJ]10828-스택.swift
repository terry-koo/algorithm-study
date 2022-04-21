//  [BOJ] 10828 - 스택
//  2022/04/21

// stack: 구조체와 배열로 구현하기
public struct Stack<T> {
    private var stack: [T] = []
    
    // to make 'stack' mutable
    public mutating func push(_ element: T){
        stack.append(element)
    }
    
    // to make 'stack' mutable
    public mutating func pop() -> T? {
        return stack.isEmpty ? nil : stack.popLast()
    }
    
    public var size: Int {
        return stack.count
    }
    
    public var empty: Int {
        return stack.isEmpty ? 1 : 0
    }
    
    public func top() -> T? {
        return stack.last
    }
}

// read command lines
let N = Int(readLine()!)!
var rstStack = Stack<Int>()

for _ in 0..<N {
    let command = readLine()!.split(separator: " ")
    
    switch command[0] {
    case "push":
        rstStack.push(Int(command[1])!)
    case "pop":
        print(rstStack.pop() ?? -1)
    case "size":
        print(rstStack.size)
    case "empty":
        print(rstStack.empty)
    default:
        print(rstStack.top() ?? -1)
    }
}
// nil 병합 연산자: 사용하면 더 안전하고 간단하게 옵저널을 다룰 수 있다.
