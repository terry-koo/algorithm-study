struct Queue<T> {
    private var elements: [T] = []
    private var reverseElement: [T] = []

    public var size: Int {
        return elements.count + reverseElement.count
    }

    public mutating func push(_ element: T) {
        return elements.append(element)
    }

    public mutating func pop() -> T? {
        if reverseElement.isEmpty {
            reverseElement = elements.reversed()
            elements.removeAll()
        }
        return reverseElement.isEmpty ? nil : reverseElement.popLast()
    }
}

var queue = Queue<Int>()
let N = Int(readLine()!)!

for n in 1...N {
    queue.push(n)
}

while queue.size != 1 {
    queue.pop()
    if let item = queue.pop() {
        queue.push(item)
    }
}

print(queue.pop()!)
