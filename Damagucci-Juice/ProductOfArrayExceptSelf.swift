class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var ans = [Array(nums[1..<nums.count]).reduce(1) { $0 * $1 }]
        for i in 1..<nums.count {
            ans.append(1)
            if nums[i] == 0 {
                ans[i] = (Array(nums[0..<i]) + Array(nums[i+1..<nums.count])).reduce(1) { $0 * $1 }
            } else {
                ans[i] = ans[i-1] * nums[i-1] / nums[i]
            }
        }
        return ans
    }
}
