//
//  main.swift
//  [BOJ] 9012
//
//  Created by 김연호 on 2022/04/19.
//
// 이렇게 풀이하긴 했는데 스택으로 풀면 ( 괄호를 push 하고 ) 가 입력 될 때 pop 하는 방식으로 하면 좋을 것 같습니다.

import Foundation

let loop_cnt = Int(readLine()!)!

for _ in 0..<loop_cnt {
    let in_Str = readLine()!
    var cnt = 0
    for char in in_Str {
        //( 괄호가 입력되면 cnt 값을  1 늘려줌
        if char == "(" {
            cnt += 1
        }else {
            //) 입력이지만 이외의 값일 경우로 처리해 else로 처리
            // cnt 값을 하나 뺴줌으로써 괄호 짝을 맞춰줌
            cnt -= 1
            if cnt < 0 {
                // ) 괄호가 하나 더 나올 경우 for문 종료
                break
            }
        }
    } // 결과 값 출력시 cnt값이 0일 경우 괄호짝이 맞으므로 yes출력
    // 아닌 경우 괄호 짝이 안맞으므로 no 출력
    print(cnt == 0 ? "YES" : "NO")
}
