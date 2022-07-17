// 변수 선언
var inputs = readLine()!
var commandResult = ""
let commandCount = Int(readLine()!)!

for _ in 0..<commandCount {
    let command = readLine()!
    
    switch command {
    case "L":
        if !inputs.isEmpty { commandResult.append(inputs.popLast()!) }
    case "D":
        if !commandResult.isEmpty { inputs.append(commandResult.popLast()!) }
    case "B":
        if !inputs.isEmpty { inputs.removeLast() }
    default:
        inputs.append(command.last!)
    }
}

print(inputs + commandResult.reversed())
