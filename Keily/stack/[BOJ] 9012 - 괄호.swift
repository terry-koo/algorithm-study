//  [BOJ] 9012 - 괄호
//  2022/04/21

// Stack
public struct Stack2<T> {
    private var stack: [T] = []
    
    public mutating func push(_ element: T){
        stack.append(element)
    }
    
    public mutating func pop() -> T? {
        return stack.popLast()
    }
    
    public var empty: Bool {
        return stack.isEmpty
    }
}

let C = Int(readLine()!)!

for _ in 0..<C {
    let line = readLine()!
    var check = Stack2<Character>()
    var rst = "YES"
    
    for item in line {
        if item == "(" { check.push(item)}
        else {
            if check.empty { rst = "NO" ; break }
            else { check.pop() }
        }
    }
    if !check.empty { rst = "NO" }
    print(rst)
}
