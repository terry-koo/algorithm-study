import Foundation

let n = Int(readLine()!)!
var deque: [Int] = []

for _ in 0..<n {
    let inputs = readLine()?.components(separatedBy: " ")
    command(deque: &deque, inputs: inputs ?? [])
}

// Int type의 array인 deque을 가져온다 -> deque: &deque
// deque: &deque에서 앞의 deque은 command 함수 호출 시 넣어야 하는 변수명(?)이고
// 뒤의 &deque은 위에서 선언한 변수 deque을 deque의 값으로 가져오겠다는 의미
// 만약, var example: [Int] = [] 변수도 있었다면 이 값을 쓰고 싶을 때 deque: &example로 사용가능

func command( deque: inout [Int], inputs: [String]) {
    let com: String = inputs[0]
    
    switch com{
    case "push_front":
        deque.insert(Int(inputs[1])!, at: 0)
        
    case "push_back":
        deque.append(Int(inputs[1])!)
        
    case "pop_front":
        print(deque.isEmpty ? -1 : deque.removeFirst())
        
    case "pop_back":
        print(deque.isEmpty ? -1 : deque.removeLast())
         
    case "size":
        print(deque.count)
        
    case "empty":
        print(deque.isEmpty ? 1 : 0)
        
    case "front":
        print(deque.first ?? -1)
        
    case "back":
        print(deque.last ?? -1)
        
    default:
        print("default")
        
    }
}
