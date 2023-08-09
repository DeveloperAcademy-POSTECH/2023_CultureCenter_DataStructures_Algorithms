class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard !prices.isEmpty else { return 0 }
        var profits = 0
        for i in 1..<prices.count {
            let profit = prices[i] - prices[i-1]
            profits += profit > 0 ? profit : 0
        }
        return profits
    }
}

//MARK: - 문제 해설
/*
1. 단타 매매법을 하면 된다.
2. 달면 삼키고, 쓰면 뱉는 감탄고토 매매법을 하면 최상의 이익을 뽑아낼 수 있음
3. 재벌집 막내아들에서 송중기는 타임슬립을 하고도 그정도 밖에 못벌었다니.. 한심하구나. 
4. 이 매매법은 미래의 주식 가치를 알 수 있기때문에 가능한 방법이다. 
5. 탐욕알고리즘과 동적 프로그래밍을 썼다고 하는데, 아직은 간단하게 풀었다. 
*/
