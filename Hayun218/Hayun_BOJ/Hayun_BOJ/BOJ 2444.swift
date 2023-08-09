import Foundation

let num = Int(readLine()!)!

let range = num*2-1

for i in 1...range {
  if i <= num{
    if num-i != 0{
      for _ in 1...num-i{
          print(" ", terminator:"")
      }
    }
    for _ in 1...i*2-1{
        print("*", terminator:"")
    }
    print("")
  } else{
      for _ in 1...i-num{
          print(" ", terminator:"")
      }
    for _ in 1...(num-(i-num))*2-1{
        print("*", terminator:"")
    }
    print("")
  }
}
