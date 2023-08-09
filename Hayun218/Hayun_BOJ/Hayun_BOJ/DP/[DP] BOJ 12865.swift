
// 2023.08.10(목)

import Foundation

func solution(){
    
    // MARK: - 변수 선언
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    let N = input[0]
    let K = input[1]
    
    // 튜플 선언 (무게, 가치)
    var value: [(Int,Int)] = []
    
    // 2차원 배열 DP 선언
    var dp : [[Int]] = .init(repeating: .init(repeating: 0, count: K+1), count: N)
    
    
    // MARK: - 변수 인풋 받기
    for _ in 0..<N{
        let data = readLine()!.split(separator: " ").map{Int(String($0))!}
        value.append((data[0], data[1]))
    }
    
    // MARK: - DP 계산
    for i in 0..<N {
        for j in 1...K{
            // 첫번째 물건
            if i == 0{
                if j >= value[i].0{
                    dp[i][j] = value[i].1
                }
            } else{
                if j < value[i].0{
                    dp[i][j] = dp[i-1][j]
                }else{
                    // max(현재까지 최고가치, 현재물건가치+(담을수있는무게 - 현재무게)의 가치)
                    dp[i][j] = max(dp[i-1][j], value[i].1 + dp[i-1][j-value[i].0])
                }
            }
            
            
        }
    }
    
    print(dp[N-1][K])
}


