//
//  main.swift
//  Terry
//
//  Created by Terry Koo on 2022/05/01.
//

import Foundation


var command = readLine()!.components(separatedBy: " ")
var size = Int(command[0])!
var deleteIndex = Int(command[1])! - 1
var arr: [Int] = Array<Int>(1...size)

print("<",terminator: "")
for i in 0..<size {
    
   

    if i != size-1 {
        print(arr.remove(at: deleteIndex), terminator: ", ")
        arr.insert(0, at: deleteIndex)
        
        for _ in 0..<Int(command[1])! {
            if deleteIndex + 1 < size{
                repeat {
                    deleteIndex += 1
                    if deleteIndex >= size {
                        deleteIndex = 0
                    }
                } while arr[deleteIndex] == 0
            } else {
                deleteIndex = 0
                if arr[deleteIndex] != 0 {
                } else {
                    repeat {
                        deleteIndex += 1
                    } while arr[deleteIndex] == 0
                }
            }
        }
    } else {
        print(arr.remove(at: deleteIndex), terminator: "")
        arr.insert(0, at: deleteIndex)
    }
    
        
}

print(">",terminator: "")
