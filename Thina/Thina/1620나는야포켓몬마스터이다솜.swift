//
//  main.swift
//  Thina
//
//  Created by 유정인 on 2022/07/17.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]

var result = ""
var dictionary = [String]()

for _ in 1...N {
    let name = readLine()!
    dictionary.append(name)
}

//print(dictionary)

for _ in 0..<M {
    let question = readLine()!
    let num = Int(question) ?? 0
    //question이 문자열인 경우
    if num == 0 {
        result.write("\(dictionary.firstIndex(of: question)!+1)")
    } else {
        result.write("\(dictionary[num-1])")
    }
}

print(result)
