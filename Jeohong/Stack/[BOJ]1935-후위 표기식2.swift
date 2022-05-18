import Foundation

let N = Int(readLine()!)!
let formula = readLine()!
var num = [Int]()
var answer = [Double]()

for _ in 0..<N {
    num.append(Int(readLine()!)!)
}

for op in formula {
    switch op {
    case "*":
        answer.append(answer.removeLast() * answer.removeLast())
    case "/":
        let stackLast = answer.removeLast()
        answer.append(answer.removeLast() / stackLast)
    case "+":
        answer.append(answer.removeLast() + answer.removeLast())
    case "-":
        let stackLast = answer.removeLast()
        answer.append(answer.removeLast() - stackLast)
    default:
        let idx = op.asciiValue! - 65
        answer.append(Double(num[Int(idx)]))
    }
}

print(String(format: "%.2f", answer.removeLast()))
