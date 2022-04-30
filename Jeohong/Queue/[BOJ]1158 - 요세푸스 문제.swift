var result = [Int]()
let inputs = readLine()!.split(separator: " ")
var num: [Int] = Array(1...Int(inputs[0])!)
var idx = Int(inputs[1])! - 1

while true {
    result.append(num.remove(at: idx))
    if num.isEmpty { break }
    idx = (idx + Int(inputs[1])! - 1) % num.count
}
print("<\(result.map({ String($0) }).joined(separator: ", "))>")
