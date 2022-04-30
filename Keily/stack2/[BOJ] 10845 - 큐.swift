//  [BOJ] 10845 - 큐
//  2022/04/30

let n = Int(readLine()!)!
var que: [Int] = []

for _ in 0..<n {
    let cmd = readLine()!.split(separator:" ")
    
    switch cmd[0] {
    case "push" :
        que.append(Int(cmd[1])!)
    case "pop" :
        if que.count != 0 {
            print(que.removeFirst())
        }
        else {
            print(-1)
        }
    case "size":
        print(que.count)
    case "front":
        print(que.isEmpty ? -1: que[0])
    case "back":
        print(que.isEmpty ? -1 : que[que.count - 1])
    default: //empty
        print(que.isEmpty ? 1 : 0)
    }
}
