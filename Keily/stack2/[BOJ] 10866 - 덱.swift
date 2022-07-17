//  [BOJ] 10866 - 덱
//  2022/04/30

let n = Int(readLine()!)!
var deque: [Int] = []

for _ in 0..<n {
    let cmd = readLine()!.split(separator:" ")
    
    switch cmd[0] {
    case "push_front":
        deque.insert(Int(cmd[1])!, at:0)
    case "push_back":
        deque.append(Int(cmd[1])!)
    case "pop_front":
        if deque.count != 0 {
            print(deque.removeFirst())
        }
        else {
            print(-1)
        }
    case "pop_back":
        if deque.count != 0 {
            print(deque.removeLast())
        }
        else {
            print(-1)
        }
    case "size":
        print(deque.count)
    case "front":
        print(deque.isEmpty ? -1 : deque[0])
    case "back":
        print(deque.isEmpty ? -1 : deque[deque.count - 1])
    default: //empty
        print(deque.isEmpty ? 1 : 0)
    }
}
