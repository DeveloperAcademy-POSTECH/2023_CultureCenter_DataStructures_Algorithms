import Foundation

let input = readLine()!.split(separator:" ").map{Int(String($0))}

var values = [Int]()
var maxIdx: Int = 0
var result: Int = input[1]!
// 갯수
var cnt: Int = 0

let num = input[0]!


for i in 0...num-1{
    let inputN = Int(readLine()!)!
    values.append(inputN)
    if values[i] <= result {
        // 가치보다 적은 동전 중에서 가장 큰 동전의 인덱스
        maxIdx = i
    }
}

while result != 0{
    cnt += result / values[maxIdx]
    result = result % values[maxIdx]
    maxIdx -= 1
}

print(cnt)
