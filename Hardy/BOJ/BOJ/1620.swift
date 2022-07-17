//
//  main.swift
//  BOJ
//
//  Created by 김연호 on 2022/07/07.
//
//1620 나는야 포켓몬 마스터 이다솜 288ms
import Foundation

let num = readLine()!.split(separator: " ").map{Int(String($0))!}
var strPokemon = [String : Int]()
var numPokemon = [Int : String]()

for i in 0..<num[0] {
    let pokemon = readLine()!
    strPokemon[pokemon] = i + 1
    numPokemon[i+1] = pokemon
}
for _ in 0..<num[1] {
   let question = readLine()!
    
    if let int = Int(question) {
        print(numPokemon[int]!)
    } else{
        print(strPokemon[question]!)
    }
}
