//  [BOJ] 9093 - 단어뒤집기
//  2022/04/21

let n = Int(readLine()!)!
var Lines: [String] = []

for _ in 0..<n {
    Lines.append(readLine()!)
}

for i in Lines {
    let strings = i.split(separator: " ")
    var reverseString = ""
    for j in 0..<strings.count {
        reverseString += strings[j].reversed() + " "
    }
    print(reverseString)
}
