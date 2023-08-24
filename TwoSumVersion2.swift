class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let filtered = nums.sorted()
        var lhsIndex = 0
        var rhsIndex = filtered.count - 1
        while lhsIndex < rhsIndex {
            let l = filtered[lhsIndex]
            let r = filtered[rhsIndex]
            let sum = l + r
            if sum == target {
                return [nums.firstIndex(of: l)!, nums.lastIndex(of: r)!]
            } else if sum > target {
                rhsIndex -= 1
            } else if sum < target { 
                lhsIndex += 1
            }

        }
        return []
    }
}

// 정렬해서 two pointer 방식으로 풂
