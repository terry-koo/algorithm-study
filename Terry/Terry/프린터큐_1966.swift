//
//  main.swift
//  Terry
//
//  Created by Terry Koo on 2022/05/18.
//
import Foundation

struct Queue {
    private var elements: [Int] = [Int]()
    
    mutating func push(element: Int){
        elements.insert(element, at: 0)
    }
    
    mutating func pop() -> Int {
        return elements.count == 0 ? -1 : elements.removeLast()
    }
    
    func size() -> Int {
        return elements.count
    }
    
    func front() -> Int {
        return elements.count == 0 ? -1 : elements.last!
    }
    
    func back() -> Int {
        return elements.count == 0 ? -1 : elements.first!
    }
    
    func empty() -> Int {
        return elements.count == 0 ? 1 : 0
    }
}

var n = Int(readLine()!)!
var count: Int // 문서 갯수
var index: Int // 궁금한 문서의 index
var arr: [Int] // 문서들의 중요도를 저장
var popCount: Int = 0
for _ in 0..<2*n {
    var queue = Queue()
    var first = readLine()!.split(separator: " ") // 첫번째 줄 읽기
    var count = first[0] // 문서 갯수
    var index = first[1] // 궁금한 문서의 index
    arr = readLine()!.split(separator: " ").map({Int(String($0))!}) // 문서들의 중요도를 저장
    
    for i in 0..<Int(count)! {
        queue.push(element: i) // 문서의 인덱스를 큐에 넣음
    }
    
innerWhile: while queue.empty() != 1 {
        var popIndex = queue.pop()
        if arr[popIndex] == arr.max() { // pop한 값이 문서들중 최고 우선순위를 가질때
            arr[popIndex] = -1 // pop한 인덱스에 위치한 문서를 배열에서 -1로 초기화
            popCount += 1 // 출력한 문서 갯수 증가
            if popIndex == Int(index)! {
                print(popCount) // 정답 출력
                break innerWhile // pop한 값이 내가 찾을려는 index면 while문 끝남
            }
        } else { // pop한 값이 문서들중 최고 우선순위를 가지지 않아 다시 끝에 넣어줌
            queue.push(element: popIndex)
        }
    }
    popCount = 0 // 정답 초기화
}
