//
//  main2.swift
//  Terry
//
//  Created by Terry Koo on 2022/05/18.
//

import Foundation

var buffer: [UInt8] = Array(FileHandle.standardInput.readDataToEndOfFile()), byteIdx = 0;buffer.append(0)

func readByte() -> UInt8 {
    defer { byteIdx += 1 }
    return buffer.withUnsafeBufferPointer { $0[byteIdx] }
}

func readInt() -> Int {
    var number = 0, byte = readByte(), isNegative = false
    while byte == 10 || byte == 32 { byte = readByte() }
    if byte == 45 { byte = readByte(); isNegative = true }
    while 48...57 ~= byte { number = number * 10 + Int(byte - 48); byte = readByte() }
    return number * (isNegative ? -1 : 1)
}

func readStirngSum() -> Int {
    var byte = readByte()
    while byte == 10 || byte == 32 { byte = readByte() }
    var sum = Int(byte)
    while byte != 10 && byte != 32 && byte != 0 { byte = readByte(); sum += Int(byte) }
    return sum - Int(byte)
}

func writeByBytes(_ output: [UInt8]) {
    FileHandle.standardOutput.write(Data(bytes: output, count: output.count * MemoryLayout<UInt8>.stride))
}

var boolArray = Array(repeating: false, count: 21)
let fullArray = Array(repeating: true, count: 21)
let emptyArray = Array(repeating: false, count: 21)
var output = [UInt8]()

(1...readInt()).forEach{ _ in
    switch readStirngSum() {
    case 297:
        boolArray[readInt()] = true
        break
    case 654:
        boolArray[readInt()] = false
        break
    case 510:
        output.append(boolArray[readInt()] ? 49 : 48)
        output.append(32)
        break
    case 642:
        boolArray[readInt()].toggle()
        break
    case 313:
        boolArray = fullArray
        break
    default:
        boolArray = emptyArray
        break
    }
}

writeByBytes(output)



//
//import Foundation
//
//let M = Int(readLine()!)!
//var S: Set<Int> = []
//
//for _ in 0..<M {
//    let calc: Array<String> = readLine()!.split(separator: " ").map{ String($0) }
//
//     switch calc.count{
//     case 1:
//         switch calc[0] {
//         case "all":
//             S = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
//         default:
//             S = []
//         }
//     case 2:
//        let command = calc[0]
//        let x = Int(calc[1])!
//
//         switch command {
//         case "add":
//             S.insert(x)
//         case "remove":
//             S.remove(x)
//         case "check":
//             if S.contains(x) {
//                 print(1)
//             } else {
//                 print(0)
//             }
//         case "toogle":
//             if S.contains(x) {
//                 S.remove(x)
//             } else {
//                 S.insert(x)
//             }
//         default:
//             print()
//         }
//     default:
//         print()
//    }
//}
