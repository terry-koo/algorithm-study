//
//  main.swift
//  Terry
//
//  Created by Terry Koo on 2022/04/17.
//

import Foundation

var n = Int(readLine()!)!
var dic: [Int:[Character]] = [:]
for _ in 0..<n {
    let inputs = readLine()?.components(separatedBy: " ")
    for i in 0 ..< inputs!.count {
        dic[i] = Array(inputs![i])
    }
    
    for i in 0 ..< dic.count {
        for _ in 0 ..< dic[i]!.count {
            print(dic[i]!.removeLast(), terminator: "")
        }
        print(" ", terminator: "")
    }
    print("")
    dic = [:]
}

