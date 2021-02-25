import Foundation

//var RandomNum : [Int] = []

//var GameCount : Int = 9

//func initRandom(){
//
//}

//func returnResult(){
//
//}

//func startGame(){
//
//}

//if inputNum.contains(0)  // 배열 요소 값 있는지 확인
//var inputNum = Array(repeating: 0, count: 4) 배열 크기 정하기
//    print(inputNum[0..<4]) // 배열 요소확인

var tmpBool = true
var GameCount : Int = 9

while(GameCount > 0)
{
    print("임의의 수 : ", terminator: "")
    let inputNum = readLine()!.split(separator: " ").map { Int($0)! }
    
    if inputNum.contains(1)
            && inputNum.contains(2)
                && inputNum.contains(3)
    {
        //1 ~ 9 범위 조건
            if inputNum[0] < 1 || inputNum[0] > 9
                || inputNum[1] < 1 || inputNum[1] > 9
                || inputNum[2] < 1 || inputNum[2] > 9
            {
                print("1~ 9까지의 범위를 입력하세요")
                GameCount -= 1
                continue
            }
        //중복체크
            else if inputNum[0] == inputNum[1]
                || inputNum[1] == inputNum[2]
                || inputNum[0] == inputNum[2]
            {
                print("중복되지 않은 수를 입력하세요")
                GameCount -= 1
                continue
            }
    }
    else {
        print("3가지 숫자를 입력하세요")
        GameCount -= 1
        continue
    }
}
