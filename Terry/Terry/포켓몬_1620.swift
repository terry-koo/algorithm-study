//
//  포켓몬_1620.swift
//  Terry
//
//  Created by Terry Koo on 2022/07/17.
//

import Foundation

var input = readLine()!.split(separator: " ")


var dictionary: [String: String] = [String: String]()

for i in 1..<(Int(String(input[0]))!+1){
    var name = readLine()!
    dictionary[name] = "\(i)"
    dictionary["\(i)"] = name
}


for i in 0..<(Int(String(input[1]))!) {
    var request = readLine()!
    print(request)
    print(dictionary[request]!)
}
