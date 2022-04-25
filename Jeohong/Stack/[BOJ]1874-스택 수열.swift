// Stack 구조체 선언
public struct Stack<T> {
    private var elements = [T]()
    public init() {}
    
    public mutating func pop() -> T? {
        return self.elements.popLast()
    }
    
    public mutating func push(_ elements: T) {
        self.elements.append(elements)
    }
    
    public func top() -> T? {
        return self.elements.last
    }
    
    public var empty: Bool {
        return self.elements.isEmpty
    }
}

// 변수 선언
let n = Int(readLine()!)!
var sequence = [Int]()
var result = [String]()
var sequenceStack = Stack<Int>()
var pushValue = 1

// 입력값 저장 배열
for _ in 0..<n { sequence.append(Int(readLine()!)!) }

// 1부터 현재의 value 까지 채워넣고, 스택의 마지막 값과 현재 value 의 값을 비교하여 같으면 pop, 다르면 해당 수열을 만들 수 없으므로 NO 출력
for value in sequence {
    while pushValue <= value {
        sequenceStack.push(pushValue)
        result.append("+")
        pushValue += 1
    }
    if sequenceStack.top()! == value {
        sequenceStack.pop()
        result.append("-")
    } else { print("NO"); break }
}

// 스택이 비어있는 상태면 정상적인 계산 완료
if sequenceStack.empty {
    print(result.joined(separator: "\n"))
}
