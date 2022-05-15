import Foundation


// 시간 초과
var input = readLine()!
var arr = Array(input)
var count = arr.count
var i = 0
var result = 0 // 제출할 막대기 개수
var countBars = 0 // 막대기 하나가 조각난 개수

struct Bar {
    var l: Int
    var r: Int
}

var lefts = [Int]()
var bars = [Bar]()

while i != count {
    if arr[i] == "(" && arr[i+1] == ")" {
        arr[i] = "L"
        arr[i+1] = "L"
        i += 2
    } else if arr[i] == "(" {
        lefts.append(i)
        i += 1
    } else {
        bars.append(Bar(l: lefts.removeLast(), r: i))
        i += 1
    }
}


for i in 0..<bars.count {
    print("barscount")
    for j in stride(from: bars[i].l, to: bars[i].r+1 , by: 1) {
        if arr[j] == "L" {
            countBars += 1
        }
    }
    result += (countBars/2) + 1
    countBars = 0
}

print(result)







// 구글링 후 다시 풀었음
public struct Stack<T> {
    private var elements = [T]()
    
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

var stack = Stack<String>()
var input = readLine()!
var arr = Array(input)
var result = 0

for i in 0..<arr.count {
    if arr[i] == "(" {
        stack.push("(")
    } else {
        stack.pop()
        if arr[i-1] == "(" {
            result += stack.size
        } else {
            result += 1
        }
    }
}

print(result)
