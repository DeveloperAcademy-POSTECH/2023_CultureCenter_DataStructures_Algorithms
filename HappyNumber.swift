class Solution {
    func isHappy(_ n: Int) -> Bool {
        var sums: [Int] = [powering(n)]

        while true {
            let last = sums.last!
            if last == 1 { return true }
            if sums[0..<sums.count-1].contains(last) {
                return false 
            }
            sums.append(powering(last))
        }

        func powering(_ num: Int) -> Int {
            "\(num)"
                .compactMap { Int(String($0)) }
                .map { $0 * $0 }
                .reduce(0) { $0 + $1 }
        }
    }
}
