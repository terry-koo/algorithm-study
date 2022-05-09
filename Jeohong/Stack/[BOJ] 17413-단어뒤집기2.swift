let inputs = readLine()!
var noReverse = ""
var total = ""

for w in inputs {
    if w == "<" {
        noReverse.append(w)
        if !total.isEmpty {
            reversePrint(total, nil)
            total = ""
        }
    } else if w == ">" {
        noReverse.append(w)
        print(noReverse, terminator: "")
        noReverse = ""
    } else {
        if noReverse.first == "<" {
            noReverse.append(w)
        } else if w != " "{
            total.append(w)
        } else {
            reversePrint(total, " ")
            total = ""
        }
    }
}

if !total.isEmpty {
    reversePrint(total, nil)
}

func reversePrint(_ total: String, _ space: String?) {
    print(String(total.reversed()), terminator: space ?? "")
}
