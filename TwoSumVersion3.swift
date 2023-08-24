class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashmap = Set(nums)
        
        for (lhsIdx, num) in nums.enumerated() {
            let y = target - num
            if hashmap.contains(y) {
                let rhsIdx = nums.lastIndex(of: y)! 
                if lhsIdx != rhsIdx {
                    return [lhsIdx, rhsIdx]
                }
            }
        }
        return []
    }
}

// Hashmap을 이용해서 풀었습니다. 
