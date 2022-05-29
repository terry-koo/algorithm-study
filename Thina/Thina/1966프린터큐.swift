//
//  main.swift
//  Thina
//
//  Created by 유정인 on 2022/05/21.
//

import Foundation

let testcase = Int(readLine()!)!

for _ in 0..<testcase {
    let inputs = readLine()!.split(separator: " ").map{Int($0)!}
    let n = inputs[0]
    let m = inputs[1]
    let priority = readLine()!.split(separator: " ").map{Int($0)!}

    var queue: [[Int]] = []

    for i in priority {
        queue.append([i,0])  // priority = [1, 2, 3, 4], queue = [[1, 0], [2, 0], [3, 0], [4, 0]]
    }
    
    queue[m][1] = 1  // m = 2, queue = [[1, 0], [2, 0], [3, 1], [4, 0]]

    var back = 0  // 우선순위가 낮아 queue의 뒤로 append된 값의 개수
    var order = 0  // 몇번째인지 출력할 값

    while !queue.isEmpty {
        back = 0
        let value = queue.removeFirst()

        for i in queue {
            if value[0] < i[0] {  // [1, 0] < [2, 0], [2, 0] < [3, 1], [3, 1] < [4, 0], [4, 0] < [1, 0]
                queue.append(value)  // priority가 낮은 value값은 다시 queue에 append
                back = 1
                break
            }
        }
        
        if back == 0 { // 우선순위가 가장 높은 값이 removeFirst() 되었을 때
            order += 1 // 몇번째로 출력되었는지 세기 시작

            if value[1] == 1 {  // 원하는 index 값이 몇번째로 출력되었는지 알기 위한 if문
                print(order)
            }
        }
    }
}
