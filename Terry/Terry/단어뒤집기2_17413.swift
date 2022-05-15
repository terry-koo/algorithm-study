
var input = readLine()!
var arr = Array(input)
var pass = false
var result = ""
var temp = ""

for i in 0..<arr.count {
    switch arr[i] {
    case "<":
        if temp.count != 0 {
            result += String(temp.reversed())
            temp = ""
        }
        pass = true
        result += String(arr[i])
    case ">":
        pass = false
        result += String(arr[i])
    case " ":
        if pass {
            result += " "
        } else {
            result += String(temp.reversed()) + " "
            temp = ""
        }
    default:
        if pass {
            result += String(arr[i])
        } else {
            temp += String(arr[i])
        }
    }
}

if temp.count != 0 {
    result += String(temp.reversed())
}

print(result)
