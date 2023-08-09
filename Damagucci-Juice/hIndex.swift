class Solution {
    func hIndex(_ citations: [Int]) -> Int {
        guard citations.count > 1 else { return citations[0] > 0 ? 1 : 0 }
        let descent = [0] + citations.sorted(by: >)
        var h = 0
        for i in 1..<descent.count {
            if i > descent[i] {
                break
            }
            if i <= descent[i] {
                h = max(i, h)
            }
        }
        return h
    }
}
