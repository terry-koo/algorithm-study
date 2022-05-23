import Foundation

let loopNum = Int(readLine()!)!
var orderLine = readLine()!
var inputNum: [Double] = []
var stack : [Double] = []

for _ in 0..<loopNum {
    let num = Double(readLine()!)!
    inputNum.append(num)
}
//입력한 숫자값 차례로 배열에 넣음

for order in orderLine {
    switch order {
    case"+" :
        stack.append(stack.removeLast() + stack.removeLast())
    case"-" :
        let mFirstpop = stack.removeLast()
        stack.append(stack.removeLast() - mFirstpop )
    case"*" :
    stack.append (stack.removeLast() * stack.removeLast())
    case"/" :
        let dFirstpop = stack.removeLast()
        stack.append(stack.removeLast() / dFirstpop )
    default:
        let idx = order.asciiValue! - 65
        stack.append(inputNum[Int(idx)])
    }
}

print(String(format: "%.2f", stack[0]))
//ifelse문 사용했을때랑 switch문 사용했을때랑 시간 차이가 없네?
