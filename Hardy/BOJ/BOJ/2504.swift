//2504번
import Foundation

var input = Array(readLine()!).map { String($0) }
var stack = [String]()
var result = 0
var isCorrect = true
var temp = 1

for i in input.indices {//indices 배열을 안전하게 검사함
    
    if input[i] == "(" {
        temp *= 2
        stack.append(input[i])
    } else if input[i] == "[" {
        temp *= 3
        stack.append(input[i])
    } else if input[i] == ")" {
        if stack.isEmpty || stack.last != "(" {
            isCorrect = false
            break
        }
        
        if input[i-1] == "(" {
            result += temp
        }
        stack.removeLast()
        temp /= 2
    } else if input[i] == "]" {
        if stack.isEmpty || stack.last != "[" {
            isCorrect = false
            break
        }
        
        if input[i-1] == "[" {
            result += temp
        }
        stack.removeLast()
        temp /= 3
    }
}

if !isCorrect || !stack.isEmpty {
    print(0)
} else {
    print(result)
}
