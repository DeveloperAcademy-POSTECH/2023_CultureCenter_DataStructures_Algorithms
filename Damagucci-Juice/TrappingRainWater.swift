class Solution {
    func trap(_ height: [Int]) -> Int {
        var lhs2rhs = [Int](repeating: 0, count: height.count)
        var rhs2lhs = [Int](repeating: 0, count: height.count)
        var ans = 0

        for i in 1..<height.count {
            let subtract = height[i-1] - height[i] + lhs2rhs[i-1]
            lhs2rhs[i] = subtract > 0 ? subtract : 0
        }

        for i in (0..<height.count-1).reversed() {
            let subtract = height[i+1] - height[i] + rhs2lhs[i+1]
            rhs2lhs[i] = subtract > 0 ? subtract : 0
        }
        
        for i in 0..<height.count {
            ans += min(lhs2rhs[i], rhs2lhs[i])
        }

        return ans 
    }
}
