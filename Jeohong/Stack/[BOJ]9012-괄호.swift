// [BOJ] 9012 - 괄호
public struct Stack<T> {
    private var elements = [T]()
    public init() {}
    
    public mutating func pop() -> T? {
        return self.elements.popLast()
    }
    
    public mutating func push(_ element: T) {
        self.elements.append(element)
    }
    
    public var empty: Bool {
        return self.elements.isEmpty
    }
}

let T = Int(readLine()!)!

for _ in 0..<T {
    let ps = readLine()!
    var psStack = Stack<Character>()
    var result = "YES"
    
    for item in ps {
        if item == "(" { psStack.push(item) }
        else {
            if psStack.empty { result = "NO";break }
            else { psStack.pop() }
        }
    }
    if !psStack.empty { result = "NO" }
    print(result)
}
