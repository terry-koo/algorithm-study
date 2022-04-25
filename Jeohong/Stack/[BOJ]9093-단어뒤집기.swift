// [BOJ] 9093 - 단어 뒤집기

let T = Int(readLine()!)!
var sentenceReversed : String

for _ in 0..<T {
    sentenceReversed = ""
    let sentence = readLine()!.split(separator: " ")
    sentence.forEach {
        sentenceReversed.append($0.reversed() + " ")
    }
    print(sentenceReversed)
}
