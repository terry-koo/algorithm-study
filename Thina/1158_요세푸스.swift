import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
var numArray: [Int] = []
var result: [Int] = []  // pop한 값을 받을 결과array
var index: Int = input[1] - 1

for i in 1...input[0] {
    numArray.append(i)
}

for _ in numArray {
    if numArray.count > index {
        result.append(numArray.remove(at: index))
        index += input[1] - 1
        
    } else {
        index %= numArray.count
        result.append(numArray.remove(at: index))
        index += input[1] - 1
        
    }
}

print("<" + result.map({String($0)}).joined(separator: ", ") + ">")
