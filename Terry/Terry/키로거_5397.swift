//
//  main.swift
//  Terry
//
//  Created by Terry Koo on 2022/07/17.
//

import Foundation

var N = Int(readLine()!)!

var cusor: Int = 0
for i in 0..<N {
    var key: String = readLine()!
    var array = Array(key)
    var result: [String] = [String]()
    
    for i in 0..<array.count {
        switch array[i] {
        case "<":
            if cusor == 0 {
                break
            }
            cusor -= 1
            break
        case ">":
            if result.count == cusor {
                break
            }
            cusor += 1
            break
        case "-":
            if cusor == 0 {
                break
            } else if cusor == result.count {
                cusor -= 1
                result.remove(at: cusor)
                break
            }
            result.remove(at: cusor)
            break
        default:
            result.insert(String(array[i]), at: cusor)
            cusor += 1
            break
        }
    }
    cusor = 0
    for element in result {
      print(element, terminator: "")
    }
}
