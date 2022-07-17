let N = Int(readLine()!)!
var nums = readLine()!.split(separator: " ").map{Int(String($0))!}
var numCount = Array(repeating: 0, count: nums.max()!)
var answer = [Int]()

// 등장횟수 계산
for idx in 0..<N {
    numCount[nums[idx] - 1] += 1
}

// 오등큰수 인덱스 검색
for idx in 0..<N {
    while !answer.isEmpty && numCount[nums[answer.last!] - 1] < numCount[nums[idx] - 1] {
        nums[answer.removeLast()] = nums[idx]
    }
    answer.append(idx)
}

for idx in answer {
    nums[idx] = -1
}

print(nums.map{String($0)}.joined(separator: " "))

