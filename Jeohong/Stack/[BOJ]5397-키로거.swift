let L = Int(readLine()!)!

for _ in 0..<L {
    let pwInput = readLine()!
    var leftStack: [String] = []
    var rightStack: [String] = []
    for i in pwInput {
        if i == "<" {
            if leftStack.isEmpty == false {
                let popLeft = leftStack.popLast()!
                rightStack.append(popLeft)
            }
        } else if i == ">" {
            if rightStack.isEmpty == false {
                let popRight = rightStack.popLast()!
                leftStack.append(popRight)
            }
        } else if i == "-" {
            if leftStack.isEmpty == false {
                leftStack.popLast()
            }
        } else {
            leftStack.append(String(i))
        }
    }
    rightStack.reverse()
    leftStack.append(contentsOf: rightStack)
    print(leftStack.joined(separator: ""))
}
