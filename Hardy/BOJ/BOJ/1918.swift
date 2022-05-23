//스택에 넣어서 연산하면 될듯싶다
//+ 를 만나면 스택 안에 있는 값들을 pop하고 나서 + push
import Foundation

let input = readLine()!
var stack  = ""
var result = ""

for order in input {
    switch order {
    case "(" : stack.append(order)
    case ")" : while !stack.isEmpty && stack.last != "(" {
        result.append(stack.removeLast())
        }
        stack.removeLast()
    case"+","-" :
        while !stack.isEmpty && stack.last != "(" {
            result.append(stack.removeLast())
        }
        stack.append(order)
        
    case"*","/" :
        while !stack.isEmpty && (stack.last == "*" || stack.last == "/") {
                result.append(stack.removeLast())
        }
        stack.append(order)
    default:
        result.append(order)
    }

}

while !stack.isEmpty {
    result.append(stack.removeLast())
}

print(result)
