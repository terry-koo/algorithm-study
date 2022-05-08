var inputs = readLine()!.map{String($0)}
var answer = 0
var stick = 0

for index in 0..<inputs.count {
    if inputs[index] == "(" {
        stick += 1
    } else {
        stick -= 1
        if inputs[index - 1] == "(" {
            answer += stick
        } else {
            answer += 1
        }
    }
}

print(answer)
