//  [BOJ] 1158 - 요세푸스 문제
//  2022/04/30

let nk = readLine()!.split(separator:" ")
var que: [Int] = []
var ans: [Int] = []

for i in 1...Int(nk[0])! {
    que.append(i)
}

var cnt = 0
var idx = 0
while que.count > 0 {
    cnt += 1
    if cnt == Int(nk[1])! {
        ans.append(que.remove(at: idx))
        cnt = 0
        idx -= 1
    }
    idx += 1
    if idx >= que.count {
        idx -= que.count
    }
}

var stringArray = ans.map {String($0)}
print("<" + stringArray.joined(separator: ", ") + ">")
