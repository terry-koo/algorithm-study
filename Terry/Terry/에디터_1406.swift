//
//  main.swift
//  Terry
//
//  Created by Terry Koo on 2022/04/25.
//

import Foundation

var inputs = readLine()!
var editor = Array(inputs)
var cusor: Int = editor.count + 1

var n = (Int(readLine()!))!

for _ in 0..<n {
    var command = Array(readLine()!)
    if command.count == 1 {
        switch command[0] {
        case "L":
            if cusor-1 == command.count{
            } else {
                cusor -= 1
            }
        case "D":
            if cusor == 0 {
                
            } else {
                cusor += 1
            }
        default:
            editor.remove(at: cusor-1)
        }
    } else {
        editor.insert(command[2], at: cusor-1)
        cusor += 1
    }
}

for i in 0 ..< editor.count {
    print(editor[i], terminator: "")
}
