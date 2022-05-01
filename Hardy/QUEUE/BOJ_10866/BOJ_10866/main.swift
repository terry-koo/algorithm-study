import Foundation

public struct Dequeue<T> {
    private var elements = [T]()

    public mutating func pop_front() -> T? {
            return self.elements.removeFirst()
    }
    
    public mutating func pop_back() -> T? {
            return self.elements.removeLast()
    }
    
    public mutating func push_back(_ element: T){
        self.elements.append(element)
    }
    
    public mutating func push_front(_ element: T){
        self.elements.insert(element, at: 0)
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

var myDequeue = Dequeue<Int>()

let cnt_Loop = Int(readLine()!)!

for _ in 0..<cnt_Loop {
    let cmd = readLine()!.split(separator:" ")
    switch cmd.first! {
        case "pop_front":
            print(myDequeue.isEmpty ? "-1" : myDequeue.pop_front()!)
        case "pop_back":
            print(myDequeue.isEmpty ? "-1" : myDequeue.pop_back()!)
        case "size":
            print(myDequeue.size)
        case "empty":
            print(myDequeue.isEmpty ? "1" : "0")
        case "front":
            print(myDequeue.isEmpty ? "-1" : myDequeue.front()! )
        case "back":
            print (myDequeue.isEmpty ? "-1" : myDequeue.back()! )
        case "push_back":
            myDequeue.push_back(Int(cmd.last!)!)
        default:
            myDequeue.push_front(Int(cmd.last!)!)
    }
}
