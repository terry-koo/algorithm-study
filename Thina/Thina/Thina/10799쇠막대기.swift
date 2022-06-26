//
//  main.swift
//  Thina
//
//  Created by 유정인 on 2022/05/18.
//

import Foundation

var inputs = readLine()!.map { String($0) }
var nums: Int = 0
var cnt: Int = 0

for i in 0 ..< inputs.count {
    if inputs[i] == "(" {
        nums += 1
    }

    if inputs[i] == ")" {
        nums -= 1
        
        if inputs[i-1] == "(" {
            cnt += nums
            
        } else {
            cnt += 1
        }
    }
}

print(cnt)
