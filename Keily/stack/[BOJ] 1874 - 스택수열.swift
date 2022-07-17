//  [BOJ] 1874 - 스택 수열
//  2022/04/25

let n = Int(readLine()!)!
var ans: [String] = []
var stack: [Int] = []
var idx = 1

for _ in 0..<n {
    let num = Int(readLine()!)!
    
    while idx <= num {
        stack.append(idx)
        ans.append("+")
        idx += 1
    }
    
    if stack.last == num {
        stack.popLast()
        ans.append("-")
    }
    else {
        ans = ["NO"]
        break
    }
}

print(ans.joined(separator: "\n"))
