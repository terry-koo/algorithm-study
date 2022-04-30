struct Queue<T> {
    private var elements: [T] = []
    
    public var size: Int {
        return elements.count
    }
    
    public var empty: Int {
        return elements.isEmpty ? 1 : 0
    }
    
    public func front() -> T? {
        return self.elements.first
    }
    
    public func back() -> T? {
        return self.elements.last
    }
    
    public mutating func push(_ element: T) {
        return elements.append(element)
    }
    
    public mutating func pop() -> T? {
        return elements.isEmpty ? nil : elements.removeFirst()
    }
}

let N = Int(readLine()!)!
var intQueue = Queue<Int>()

for _ in 0..<N {
    let inputs = readLine()!.split(separator: " ")
    switch inputs[0] {
    case "push":
        intQueue.push(Int(inputs[1])!)
    case "pop":
        print(intQueue.pop() ?? -1)
    case "size":
        print(intQueue.size)
    case "empty":
        print(intQueue.empty)
    case "front":
        print(intQueue.front() ?? -1)
    default:
        print(intQueue.back() ?? -1)
    }
}
