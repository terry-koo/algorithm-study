//
//  main.swift
//  [BOJ] 1406
//
//  Created by 김연호 on 2022/04/24.
//
// 시간 292ms
import Foundation


var in_str = readLine()!
let cnt_loop = Int(readLine()!)!
var new_str = ""

for _ in 0..<cnt_loop {
    let cmd = readLine()!
    
    switch cmd.first! {
        
    case"L":
        if !in_str.isEmpty {//in_str의 값이 비어있지 않을때에만 작동
            new_str.append(in_str.popLast()!)
        } // 커서를 기준으로 두개의 문자열을 생성해서
        // 커서를 왼쪽을 옮기면 in_str의 마지막 문자를 new_str의 요소로 추가한다.
    case"D":
        if !new_str.isEmpty {
            in_str.append(new_str.popLast()!)
        } // 커서를 오른쪽으로 옮기면 new_str의 마지막 문자를 in_str의 요소로 추가한다.
    case"B":
        if !in_str.isEmpty{
            in_str.removeLast()
        }// 커서 왼쪽의 문자를 삭제하는 것 이므로 in_str의 마지막 문자를 삭제한다.
    default:
        in_str.append(cmd.last!)
    } //case"P$" 이지만 이외의 케이스가 없으므로 default값으로 설정
}

print(in_str + new_str.reversed())
//new_str의 요소는 거꾸로 출력해준다.
