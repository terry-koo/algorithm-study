//
//  main.swift
//  [BOJ]1874
//
//  Created by 김연호 on 2022/04/21.
//  push pop size empty top

import Foundation
//제네럴사용
public struct Stack<T> {
    private var elements = [T]()
    
    public init() {}
    //init() 공부 필요 이니셜라이져
    
    public mutating func pop() -> T? {
        return self.elements.popLast()
    }
    //swift는 전달인자 레이블을 사용 from 과  to 이를 사용하고않고 다른 언어처럼 매개변수 생성시
    //와일드카드 식별자인 (_) 사용으로 전달인자 레이블 사용안해도 됨!!
    public mutating func push(_ element: T){
        self.elements.append(element)
    }
    
    public func top() -> T? {
        return self.elements.last
    }
    
    public var isEmpty: Bool {
        return self.elements.isEmpty
    }
    
    public var size: Int {
        return self.elements.count
    }
}
//struct 로 스택 구현

var mystack = Stack<Int>()
var output: [String] = []
var cnt = 1
let countloop = Int(readLine()!)!

for _ in 0..<countloop {
    let num = Int(readLine()!)!
    
    while cnt <= num {
        mystack.push(cnt)
        output.append("+")
        cnt += 1
    }
    
    if mystack.top() == num {
        mystack.pop()
        output.append("-")
    }else{
        print("NO")
        exit(0)
    }
}

print(output.joined(separator: "\n")) //joined를 사용해 String값들을 하나도 합치고
                                        // 개행으로 분리해줘서 출력
