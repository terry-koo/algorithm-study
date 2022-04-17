// [BOJ] 10828 - 스택

public struct Stack<T> {
    private var elements = [T]()
    public init() {}
    
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

let N = Int(readLine()!)!
var intStack = Stack<Int>()
var lastElement : Int?
for _ in 0..<N {
    let command = readLine()!.split(separator: " ")
    switch command[0] {
    case "push":
        intStack.push(Int(command[1])!)
    case "pop":
        lastElement = intStack.pop()
        print(lastElement == nil ? -1 : lastElement!)
    case "size":
        print(intStack.size)
    case "empty":
        print(intStack.empty)
    default:
        lastElement = intStack.top()
        print(lastElement == nil ? -1 : lastElement!)
    }
}
