let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let N = input[0]
let M = input[1]

var strArr = Array(repeating: "", count: N + 1)
var strDic: Dictionary<String, Int> = [:]

for i in 1...N {
    let pokemon = readLine()!
    strArr[i] = pokemon
    strDic[pokemon] = i
}

var answer = ""

for _ in 1...M {
    let test = readLine()!
    if let num = Int(test) {
        answer.write("\(strArr[num])\n")
    } else {
        answer.write("\(strDic[test]!)\n")
    }
}

print(answer)
