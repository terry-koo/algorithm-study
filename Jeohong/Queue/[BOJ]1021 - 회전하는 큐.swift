let inputs = readLine()!.split(separator: " ").map {Int(String($0))!}
let N = inputs[0]
let M = inputs[1]

let order = readLine()!.split(separator: " ").map {Int(String($0))!}

var arr = Array(1...N)

var answer = 0

order.forEach{find($0)}
print(answer)

func find(_ findNum : Int ) {
    var leftCount = 0
    var rightCount = 0
    for i in 0..<arr.count {
        if arr[i] == findNum {
            leftCount = i
            rightCount = arr.count - i
            break
        }
    }
    if leftCount < rightCount {
        for _ in 0..<leftCount {
            arr.append(arr.removeFirst())
        }
        answer += leftCount
    }else {
        for _ in 0..<rightCount {
            arr.insert(arr.removeLast(), at: 0)
        }
        answer += rightCount
    }
    arr.removeFirst()
}

