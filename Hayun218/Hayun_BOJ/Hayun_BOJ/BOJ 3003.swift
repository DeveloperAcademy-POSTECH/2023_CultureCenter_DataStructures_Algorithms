import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}

let arr = [1,1,2,2,2,8]
var result:[Int] = []

for i in 0...5 {
  result.append(arr[i] - input[i])
}

for i in result{
    print(i, terminator: " ")
}
