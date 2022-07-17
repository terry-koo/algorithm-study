import Foundation

let text = readLine()!
var result : String = ""
var Str_reverse : String = ""
var reverse : Bool = true


for i in text {
    //태그가 있을때 단어가 뒤집어 지지 않게 하기 위함
    if i == "<" {
        reverse = false // 뒤집지 않는다
        result += Str_reverse.reversed()
        //태그 이후에 있는 문자열을 reversed해서 결과값에 포함
        Str_reverse = ""
        //포함 후 reversed 변수 초기화
        result += "\(i)"
        //각 문자를 결과값에 추가해줌
    }
    else if i == ">" {
        reverse = true
        //태그가 닫히므로 이후에 나오는 단어는 reverse
        result += "\(i)"
    }
    
    else {
        if reverse == true {
            // reverse될 경우
            if i == " "{
                result += Str_reverse.reversed() + " "
                Str_reverse = ""
            }
            else{
                Str_reverse += "\(i)"
            }
        }
        else {
            //reverse 되지 않으므로 result에 바로 문자 저장
            result += "\(i)"
        }
    }
}

if Str_reverse != ""{
    result += Str_reverse.reversed()
}

print(result)
