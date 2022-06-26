//
//  main.swift
//  Thina
//
//  Created by 유정인 on 2022/05/18.
//

import Foundation

var s = readLine()!
var tags = ""
var words = ""

for i in s {
    // tag가 나온 경우
    if i == "<" {
        tags.append(i)
        
        if !words.isEmpty {
            print(String(words.reversed()), terminator: "")
            words = ""
            
        }
        
    } else if i == ">" {
        tags.append(i)
        print(tags, terminator: "")
        tags = ""
        
    } else {
        if tags.first == "<" {
            tags.append(i)
            
        } else if i == " " {
            print(String(words.reversed()), terminator: " ")
            words = ""
            
        } else {
            words.append(i)
            
        }
    }
}

if !words.isEmpty {
    print(String(words.reversed()))
    
}
