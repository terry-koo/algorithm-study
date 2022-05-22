let inputs = readLine()!
var stack = ""
var answer = ""

for op in inputs {
    switch op {
    case "(":
        stack.append(op)
    case ")":
        while !stack.isEmpty && stack.last != "("{
            answer.append(stack.removeLast())
        }
        stack.removeLast()
    case "*", "/":
        while !stack.isEmpty && (stack.last == "*" || stack.last == "/") {
            answer.append(stack.removeLast())
        }
        stack.append(op)
    case "+", "-":
        while !stack.isEmpty && stack.last != "(" {
            answer.append(stack.removeLast())
        }
        stack.append(op)
    default:
        answer.append(op)
    }
}

while !stack.isEmpty {
    answer.append(stack.removeLast())
}
print(answer)
