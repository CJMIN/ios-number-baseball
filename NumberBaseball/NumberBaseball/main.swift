import Foundation


//var RandomNum : [Int] = []

//var GameCount : Int = 9

var RandomNum : [Int] = [0,0,0]


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

func initRandom() -> [Int] {
    
    var Num:[Int]=[0,0,0]
    
    Num[0] = Int.random(in: 1...9)
    
    repeat {
        Num[1] = Int.random(in: 1...9)
    }while Num[0]==Num[1]
    
    repeat {
        Num[2] = Int.random(in: 1...9)
    }while Num[0]==Num[2] || Num[1]==Num[2]
 
   return Num
}

//func returnResult(Num:[Int]) -> [Int] {
//    var ball:Int = 0
//    var strike:Int = 0
//
//    for i in 0...2{
//        if Num[i] != RandomNum[i] && Num.contains(RandomNum[i]){
//            ball += 1
//        }else if Num[i] == RandomNum[i]{
//            strike += 1
//        }
//    }
//    return [ball,strike]
//}
//
//func startGame(){
//
//    while GameCount>0{
//
//        GameCount-=1
//
//        let initnum:[Int] = initRandom()
//
//        let ballStrike:[Int] = returnResult(Num: initnum)
//
//        print("임의의 수 : \(initnum[0]),\(initnum[1]),\(initnum[2])")
//
//        if ballStrike[1]==3{
//            print("사용자 승리...!")
//        }else if GameCount==0{
//            print("컴퓨터 승리...!")
//        }
//        print("\(ballStrike[1]) 스트라이크, \(ballStrike[0]) 볼")
//        print("남은 기회 : \(GameCount)")
//
//    }
//}
//
//startGame()

