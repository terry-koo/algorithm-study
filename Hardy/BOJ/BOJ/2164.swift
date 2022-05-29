// 시간초과 풀이
//public struct Queue<T> {
//    private var elements = [T]()
//
//    public mutating func pop() -> T? {
//        return self.elements.removeFirst()
//    }
//
//    public mutating func push(_ element: T){
//        self.elements.append(element)
//    }
//
//    public func back() -> T? {
//        return self.elements.last
//    }
//
//    public func front() -> T? {
//        return self.elements.first
//    }
//
//    public var isEmpty: Bool {
//        return self.elements.isEmpty
//    }
//
//    public var size: Int? {
//        return self.elements.count
//    }
//
//    public mutating func push_back(_ element: T){
//        return elements.insert(element, at: self.elements.count)
//    }
//
//}
//
//var queue = Queue<Int>()
//let forLoop = Int(readLine()!)!
//
//for i in 1..<forLoop+1 {
//    queue.push(i)
//}//1부터 queue안에 차례로 값을 넣어줌
//
//while queue.size! > 1 {
//    let _ = queue.pop()
//    if let num = queue.pop() {
//        queue.push(num)
//    }
//}
//
//print(queue.front()!)

//꼼수풀이

//var input = Int(readLine()!)!
//var num = 2
//var result = 0
//
//while true {
//    if (input == 1 || input == 2){
//        print(input)
//        break
//    }
//    num *= 2
//    if (num >= input) {
//        result = (input - (num / 2)) * 2
//        print(result)
//        break
//    }
//}

let input = Int(readLine()!)!
var numArr = [Int] ()
var cnt = 0

for i in 1..<input + 1 {
    numArr.append(i)
}

while true {
    cnt += 1
    if cnt == numArr.count - 1 {
        break
    }
    numArr.append(numArr[cnt])
    cnt += 1
    
    if cnt == numArr.count - 1 {
        break
    }
}

print(numArr[cnt])
