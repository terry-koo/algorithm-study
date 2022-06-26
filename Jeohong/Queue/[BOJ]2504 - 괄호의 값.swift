import Foundation

var inputs = Array(readLine()!).map { String($0) }
var stack = [String]()
var answer = 0
var match = true
var multiple = 1

for i in inputs.indices {
    
    if inputs[i] == "(" {
        multiple *= 2
        stack.append(inputs[i])
    } else if inputs[i] == "[" {
        multiple *= 3
        stack.append(inputs[i])
    } else if inputs[i] == ")" {
        if stack.isEmpty || stack.last != "(" {
            match = false
            break
        }
        
        if inputs[i-1] == "(" {
            answer += multiple
        }
        stack.removeLast()
        multiple /= 2
    } else if inputs[i] == "]" {
        if stack.isEmpty || stack.last != "[" {
            match = false
            break
        }
        
        if inputs[i-1] == "[" {
            answer += multiple
        }
        stack.removeLast()
        multiple /= 3
    }
}

if !match || !stack.isEmpty {
    print(0)
} else {
    print(answer)
}
