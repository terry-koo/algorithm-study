//요세푸스 문제 큐에서 처음 주기만큼 값을 빼고 주기에 다다를때 까지 front 와 back을 반복시행한다.
import Foundation

public struct Queue<T> {
    private var elements = [T]()

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
    
    public mutating func push_back(_ element: T){
        return elements.insert(element, at: self.elements.count)
    }
}

var myQueue = Queue<Int>()
var arr_print = [Int]()
let input_num = readLine()!.split(separator: " ").map {Int (String($0))! }
let cycle = input_num[1] //몇번 째 사람을 제거하는지?
var cnt = 1
// Array<Substring>형이므로 Int 형으로 형변환 해줘야 함
for i in 1..<input_num.first! + 1{
    myQueue.push(i)
}
while (!myQueue.isEmpty) {
    if cnt % cycle == 0 {
        arr_print.append(myQueue.front()!)
        myQueue.pop()
    }
    else{
        //cycle값이랑 cnt값이 같지않을때 그때 front값을 뒤로 보내야함
        myQueue.push_back(myQueue.front()!)
        myQueue.pop()
    }
    cnt = cnt + 1
}

print("<" + arr_print.map({String($0)}).joined(separator:", ") + ">")
