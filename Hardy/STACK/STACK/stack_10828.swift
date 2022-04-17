//
//  main.swift
//  STACK
//
//  Created by 김연호 on 2022/04/04.
//

import Foundation

let countLoop = Int(readLine()!)!
//readLine() 하면 String?형 출력 언래핑으로 String형으로 바꿔준 뒤 Int로 형변환을 하면 Int?형이 되기떄문에 언래핑을 한 번 더 해준다.
var stack: [Int] = []

for _ in 0..<countLoop {
    let fucn = readLine()!.split(separator:" ").map {String($0) }
    switch fucn.first! {
        
    case "push":
        stack.append(Int(fucn.last!)!)
        //func.last가 String?형이므로 언래핑을 해주고 Int형변환을 하고나면 Int?형이 되므로 마찬가지로 언래핑을 한번 더 해준다.
        
    case "pop":
        let pop = stack.popLast() ?? -1
        //??연산자 - 옵셔널 값이 nil이 아니라면 옵셔넗을 언래핑한 값을, nil이면 ?? 뒤에 기본값을 사용
        //배열의 마지막 요소가 없을 수 도 있으니 popLast()의 리턴값은 옵셔널타입이므로 ??연산자 사용
        print(pop)
        
    case "size":
        print(stack.count)
        
    case "empty":
        print(stack.isEmpty ? "1" : "0")
        
    case "top":
        let top = stack.last ?? -1
        print(top)
        
    default: break
    }
}
