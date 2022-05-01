import Foundation

public struct Queue<T> {
    private var elements = [T]()
    public init() {}
    public mutating func pop() -> T? {
            return self.elements.removeFirst()
    }
   
    public mutating func push(_ element: T){
        self.elements.append(element)
    }
    
    public func back() -> T? {
        return self.elements.last
    }
    
    public func front() -> T? {
        return self.elements.first
    }
    
    public var isEmpty: Bool {
        return self.elements.isEmpty
    }
    
    public var size: Int {
        return self.elements.count
    }
}

var myQueue = Queue<Int>()

let cnt_Loop = Int(readLine()!)!

for _ in 0..<cnt_Loop {
    let cmd = readLine()!.split(separator:" ")
    switch cmd.first! {
        case "pop":
            print(myQueue.isEmpty ? "-1" : myQueue.pop()!)
        case "size":
            print(myQueue.size)
        case "empty":
            print(myQueue.isEmpty ? "1" : "0")
        case "front":
            print(myQueue.isEmpty ? "-1" : myQueue.front()! )
        case "back":
            print (myQueue.isEmpty ? "-1" : myQueue.back()! )
        default:
            myQueue.push(Int(cmd.last!)!)
    }
}
