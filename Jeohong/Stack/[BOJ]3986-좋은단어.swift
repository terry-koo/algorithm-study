import Foundation

let N = Int(readLine()!)!
var greatWordCount = 0


for _ in 0..<N {
    let inputs = readLine()!
    var stack: [Character] = []
    
    for word in inputs.reversed() {
        if stack.last == word { stack.removeLast() }
        else { stack.append(word) }
    }
    
    if stack.isEmpty { greatWordCount += 1 }
}

print(greatWordCount)
