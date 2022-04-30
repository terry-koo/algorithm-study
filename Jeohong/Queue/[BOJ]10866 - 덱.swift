struct Deque<T> {
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
    
    public mutating func push_front(_ element: T) {
        return elements.insert(element, at: 0)
    }
    
    public mutating func push_back(_ element: T) {
        return elements.append(element)
    }
    
    public mutating func pop_front() -> T? {
        return elements.isEmpty ? nil : elements.removeFirst()
    }
    
    public mutating func pop_back() -> T? {
        return elements.isEmpty ? nil : elements.removeLast()
    }
}

let N = Int(readLine()!)!
var intQueue = Deque<Int>()

for _ in 0..<N {
    let inputs = readLine()!.split(separator: " ")
    switch inputs[0] {
    case "push_front":
        intQueue.push_front(Int(inputs[1])!)
    case "push_back":
        intQueue.push_back(Int(inputs[1])!)
    case "pop_front":
        print(intQueue.pop_front() ?? -1)
    case "pop_back":
        print(intQueue.pop_back() ?? -1)
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
