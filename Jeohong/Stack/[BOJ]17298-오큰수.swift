let n = Int(readLine()!)!
var nums = readLine()!.split(separator: " ").map{Int(String($0))!}
var answer = [Int]()

for index in 0..<n {
    while !answer.isEmpty && nums[answer.last!] < nums[index] {
        nums[answer.removeLast()] = nums[index]
    }
    answer.append(index)
}

for index in answer {
    nums[index] = -1
}

print(nums.map{String($0)}.joined(separator: " "))
