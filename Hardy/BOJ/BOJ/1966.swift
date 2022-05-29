import Foundation

let forNum = Int(readLine()!)!

for _ in 0..<forNum {
    var result = 0
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    //input[0] == 문서의 갯수 / input[1] == 몇번째로 인쇄되었는지 궁금한 문서가 현재 몇번쨰에 있는가
    var curLocation = input[1]
    var value = readLine()!.split(separator: " ").map{Int($0)!}
    //문서 입력
    while true {
        if value.isEmpty {
            break
            //문서가 비어있으면 while-loop break
        }
        else if value.first == value.max() {
            //value의 첫번째 값이 value중에 최댓값 이라면
            //result 값에 1 더해줌
            result += 1
            if curLocation == 0 {
                break
            } //만약 현재 위치값이 0 이라면 while-loop break
            //그게 아니라면 value값에 첫번째 인덱스를 없에고 현재 위치 값이 -1 을 해줌
            value.removeFirst()
            curLocation -= 1
        }
        else {
            //나머지 경우
            //value에 맨앞 값을 맨 뒤로 옮겨주고
            // curLocation이 0이라면 curLocation값을 value에 들어있는 개수에서 -1 한 값으로 해주고 0 이 아니라면 현재 값에서 -1
            value.append(value.removeFirst())
            curLocation = curLocation == 0 ? value.endIndex-1 : curLocation - 1
        }
    }
    print(result)
}
