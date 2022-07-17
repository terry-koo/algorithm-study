let N = Int(readLine()!)!

var balloon = readLine()!.split(separator: " ").enumerated().map{ ($0 ,Int(String($1))!) }
var index = 0
var answer = [Int]()

while true {
    var tmp = balloon[index].1
    answer.append(balloon[index].0 + 1)
    if tmp > 0 { tmp -= 1 }
    balloon.remove(at: index)
    index += tmp
    
    if balloon.isEmpty { break }
    
    index %= balloon.count
    
    if index < 0 {
        index += balloon.count
    }
}

print(answer.map{ String($0) }.joined(separator: " "))
