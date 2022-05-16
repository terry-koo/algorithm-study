import Foundation

let input = readLine()!.map{String($0)}
//입력값을 String 형태의 배열로 저장해줌
var stick = 0
//막대의 갯수
var cnt = 0
//잘린 막대의 갯수 == 출력값

for i in 0..<input.count {
    if input[i] == "("{
        stick += 1
    }
    else {
        stick -= 1
        if input[i-1] == "("{
            cnt += stick
        }
        else{
            cnt += 1
        }
    }
}

print(cnt)
