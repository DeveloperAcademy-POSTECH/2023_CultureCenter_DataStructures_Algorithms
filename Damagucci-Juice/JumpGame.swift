class Solution {
    func jump(_ nums: [Int]) -> Int {
        var step = 0, end = 0, maxPos = 0 
        for i in 0..<nums.count-1 {
            maxPos = max(maxPos, i+nums[i])
            if end == i { end = maxPos; step += 1 }
        }
        return step
    }
}
