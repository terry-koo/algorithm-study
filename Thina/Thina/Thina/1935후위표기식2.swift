//
//  main.swift
//  Thina
//
//  Created by 유정인 on 2022/05/19.
//

import Foundation

let n = Int(readLine()!)!
let cal = Array(readLine()!) // Array<Character>
var nums = [Double]()
var stack = [Double]()

for _ in 0..<n {
    let inputs = Double(readLine()!)!
    nums.append(inputs)
}

for i in cal {
    if i == "+" {
        stack.append(stack.removeLast() + stack.removeLast())
    }
    else if i == "-" {
        let a = stack.removeLast()
        stack.append(stack.removeLast() - a)
    }
    else if i == "/" {
        let b = stack.removeLast()
        stack.append(stack.removeLast() / b)
    }
    else if i == "*" {
        stack.append(stack.removeLast() * stack.removeLast())
    }
    else {
        let index = i.asciiValue! - 65
        stack.append(nums[Int(index)])
    }
}

print(String(format: "%.2f", stack[0]))

//let answer2 = UnicodeScalar("A").value
//let answer3 = String(UnicodeScalar(65))
//
//
//print(answer2, answer3)
