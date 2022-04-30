
import Foundation

let n = Int(readLine()!)!  // 명령의 줄 수
var stack: [Int] = [] // stack으로 사용할 배열

for _ in 0..<n {
    let inputs = readLine()?.components(separatedBy: " ")
    command(stack: &stack, inputs: inputs ?? [])
}

// let inputs = readLine()?.components(separatedBy: " ")
// type : Array<String>

//let valueArr = readLine()!.components(separatedBy: " ")
// type : Optional<Array<String>>


func command( stack: inout [Int], inputs: [String]) {
    let com: String = inputs[0]
    
    switch com{
    case "push":
        if inputs.count == 2{
            stack.append(Int(inputs[1])!)
        }
    case "pop":
        print(stack.count == 0 ? -1 : stack.removeFirst())
    case "size":
        print(stack.count)
    case "empty":
        print(stack.isEmpty ? 1 : 0)
    case "front":
        print(stack.first ?? -1)
    case "back":
        print(stack.last ?? -1)
    default:
        print("default")
    }
}
