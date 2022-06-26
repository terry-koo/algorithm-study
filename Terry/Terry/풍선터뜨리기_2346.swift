//
//  main.swift
//  Terry
//
//  Created by Terry Koo on 2022/05/29.
//
import Foundation

//var N = Int(readLine()!)!
//var check = N
//var index = 0
//var result = [Int]()
//var k: Int = 0
//
//var inputArr = readLine()!.split(separator: " ").map({Int($0)!})
//var indexArr = [Int]()
//
//var num = arr[0]
//arr.remove(at: 0)
//result.append(0+1)
//while arr.count != 0 {
//    if num > 0 {
//        result.append(num%arr.count+1)
//        num = arr.remove(at: num%arr.count)
//    } else {
//        result.append((arr.count+num)%arr.count)
//        num = arr.remove(at: abs((arr.count+num)%arr.count))
//    }
//}
//
//print(result)
//
//for i in 1..<N+1 {
//    indexArr.append(i)
//}
//
//k = inputArr.remove(at: index)
//result.append(indexArr.remove(at: index))
//
//while inputArr.count != 0 {
//    if k < 0 {
//        index = (index + k)%inputArr.count
//    } else {
//        index = (index + (k-1))%inputArr.count
//    }
//
//    k = inputArr.remove(at: index)
//    result.append(indexArr.remove(at: index))
//}
//
//print(result)

//let N = Int(readLine()!)!
//
//var balloon = readLine()!.split(separator: " ").enumerated().map{ ($0 ,Int(String($1))!) }
//var index = 0
//var answer = [Int]()
//
//while true {
//    var tmp = balloon[index].1
//    answer.append(balloon[index].0 + 1)
//    if tmp > 0 { tmp -= 1 }
//    balloon.remove(at: index)
//    index += tmp
//
//    if balloon.isEmpty { break }
//
//    index %= balloon.count
//
//    if index < 0 {
//        index += balloon.count
//    }
//}
//
//print(answer.map{ String($0) }.joined(separator: " "))

struct Deque<T> {
    var input = [T]()
    var output = [T]()

    var count: Int {
        return input.count + output.count
    }

    mutating func pushLeft(_ n: T) {
        output.append(n)
    }

    mutating func pushRight(_ n: T) {
        input.append(n)
    }

    mutating func popLeft() -> T {
        if output.isEmpty {
            output = input.reversed()
            input.removeAll()
        }
        return output.popLast()!
    }

    mutating func popRight() -> T {
        if input.isEmpty {
            input = output.reversed()
            output.removeAll()
        }
        return input.popLast()!
    }
}

// Balloon의 typealias 선언
typealias Balloon = (index: Int, next: Int)

// 입력 받기
let N = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map { Int(String($0))! }

// 큐 선언
var balloons = Deque<Balloon>()

// enumerated를 활용해서 풍선의 원래 위치 + 쪽지에 적힌 값을 튜플로 저장
for (index, next) in input.enumerated() {
    balloons.pushRight((index: index + 1, next: next))
}

// 터진 풍선을 순서대로 담을 배열
var result = [Int]()

// 터진 풍선을 저장할 변수
var balloon: Balloon

// 풍선 터뜨리기
while true {
    balloon = balloons.popLeft() // deque의 맨앞에 있는 풍선을 터뜨린다.
    result.append(balloon.index) // 결과에 저장
    if balloons.count == 0 { break } // queue가 비었으면 break
    
    // 터뜨려야 할 풍선을 deque의 맨 앞으로 이동한다.
    if balloon.next > 0 {
        for _ in 0..<(balloon.next - 1) {
            balloons.pushRight(balloons.popLeft())
        }
    } else {
        for _ in 0..<abs(balloon.next) { // 터뜨릴 풍선을 deque의 맨앞까지 옮기기 위해서는 양수보다 1번 더 반복!
            balloons.pushLeft(balloons.popRight())
        }
    }
    print("[input] \(balloons.input) // [output] \(balloons.output)")
}

// 결과 출력
print(result.map { String($0) }.joined(separator: " "))
