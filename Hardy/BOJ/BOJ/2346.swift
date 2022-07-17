//deque 필요! 전단,후단에서 모두 삽입 및 삭제가 되는 큐
public struct Deque<T> {
    private var enqueue = [T]()
    private var dequeue = [T]()

    var count : Int {
        return enqueue.count + dequeue.count
    }

    var isEmpty : Bool {
        return enqueue.isEmpty && dequeue.isEmpty
    }

    mutating func pushLeft(_ n: T){
        dequeue.append(n)
    }

    mutating func pushRight(_ n: T){
        enqueue.append(n)
    }

    mutating func popLeft() -> T {
        if dequeue.isEmpty {
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        return dequeue.popLast()!
    }

    mutating func popRight() -> T {
        if enqueue.isEmpty {
            enqueue = dequeue.reversed()
            dequeue.removeAll()
        }

        return enqueue.popLast()!
    }

}

typealias Balloon = (index: Int, next: Int) //typealias 확인하기
//balloon 이란 이름을 Int 값을 가지는 index 와 next 의 묶음으로 본다.
//타입만들기라고 생각하면 될듯?
let num = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map { Int(String($0))! }
var balloons = Deque<Balloon>()

for (index, next) in input.enumerated() {//enumerated 확인하기
    //enumerated (n,x) 로 이루어진 쌍을 리턴한다
    balloons.pushRight((index : index + 1, next : next))
}

var result = [Int]()
var balloon : Balloon



while true {
    balloon = balloons.popLeft() //deque 맨앞의 풍선을 터트림
    result.append(balloon.index) // 결과에 저장
    if balloons.count == 0 {
        break;
    }

    if balloon.next > 0 {
        for _ in 0..<(balloon.next - 1){
            balloons.pushRight(balloons.popLeft())
        }
    }

    else {
        for _ in 0..<abs(balloon.next){ // abs = 절댓값
            balloons.pushLeft(balloons.popRight())
        }
    }
}


print (result.map {String($0)}.joined(separator: " "))
