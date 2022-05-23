import Foundation

let n = Int(readLine()!)!
var num = readLine()!.split(separator: " ").map { Int(String($0))!}
var stack = [Int]() // 수열 A의 index 담기
var cnt = Array(repeating: 0, count: num.max()!)
//num cnt 필요함

for i in 0..<n {
    cnt[ num[i] - 1] += 1
}
//cnt 배열에 0번쨰 인덱스부터 1234가 등장한 횟수 저장
for i in 0..<n {
    
  while !stack.isEmpty &&  cnt [num[stack.last!] - 1 ] < cnt [num[i] - 1 ]{
    num[stack.removeLast()] = num[i]
  }

  stack.append(i)
}

for i in stack {
  num[i] = -1
}

print(num.map { String($0) }.joined(separator: " "))
