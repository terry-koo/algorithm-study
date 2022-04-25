//  [BOJ] 1406 - 에디터
//  2022/04/25

var ans = readLine()!
var stack = ""

for _ in 0..<Int(readLine()!)! {
    let cmd = readLine()!
    
    switch cmd {
    case "L":
        if !ans.isEmpty {
            stack.append(ans.popLast()!)
        }
    case "D":
        if !stack.isEmpty {
            ans.append(stack.popLast()!)
        }
    case "B":
        if !ans.isEmpty {
            ans.removeLast()
        }
    default: //case "P"
        ans.append(cmd.last!)
    }
}

print(ans + stack.reversed())
