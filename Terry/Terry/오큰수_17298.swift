import Foundation

//var count = readLine()!
//var arr = readLine()!.split(separator: " ")
//var result = [String]()
//var bigger = -1
//
//for i in 0..<arr.count {
//    for j in (i+1..<arr.count).reversed() {
//        if arr[i] < arr[j] {
//            bigger = Int(arr[j])!
//        }
//    }
//    result.append(String(bigger))
//    bigger = -1
//}
//
//print(result.joined(separator: " "))


var count = readLine()!
var arr = readLine()!.split(separator: " ").map({Int($0)!})
var result = [String]()
var bigger = -1

for i in 0..<arr.count {
    for j in (i+1..<arr.count) {
        if arr[i] < arr[j] {
            bigger = arr[j]
            break
        }
    }
    result.append(String(bigger))
    bigger = -1
}

print(result.joined(separator: " "))




