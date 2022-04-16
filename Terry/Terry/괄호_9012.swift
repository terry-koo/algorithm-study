//
//  main.swift
//  Terry
//
//  Created by Terry Koo on 2022/04/17.
//

import Foundation

let n = Int(readLine()!)!

var temp: String
var stack: [Character] = []


outerLoop: for _ in 0 ..< n {
    let str = readLine()!
    let characters = Array(str)
    for i in 0 ..< characters.count {
        switch characters[i]{
        case "(":
            stack.append(characters[i])
        case ")":
            if stack.count > 0 {
                stack.removeLast()
            } else {
                print("NO")
                continue outerLoop
            }
        default:
            print("default")
        }
    }
    print(stack.count == 0 ? "YES" : "NO")
    stack = []

}
