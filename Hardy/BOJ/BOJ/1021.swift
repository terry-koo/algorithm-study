//
//  main.swift
//  BOJ
//
//  Created by 김연호 on 2022/06/30.
// 1021 회전하는 큐 8ms

import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0]
let m = nm[1]
var q = Array(1...n)
var result = 0

let targets = readLine()!.split(separator: " ").map{Int(String($0))!}

for target in targets{
    var left = 0
    var right = 0
    
    for idx in q.indices{
        if q[idx] == target{
            left = idx
            right = q.count - idx
            break
        }
    }
    
    if left < right{
        for _ in 0..<left{
            q.append(q.removeFirst())
            result+=1
        }
    }else{
        for _ in 0..<right{
            q.insert(q.removeLast(), at:0)
            result+=1
        }
    }
    
    q.removeFirst()
}

print(result)
