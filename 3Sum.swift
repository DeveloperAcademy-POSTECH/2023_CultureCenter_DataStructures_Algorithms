class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        guard nums.count >= 3 else { return result }

        let nums = nums.sorted() 
        for i in 0..<nums.count {
            if i > 0 && nums[i] == nums[i-1] { continue }
            let num = 0 - nums[i]
            var a = i + 1, b = nums.count - 1
            while a < b {
                let sum = nums[a] + nums[b]
                if sum == num {
                    result.append([nums[i], nums[a], nums[b]])
                    a += 1 
                    b -= 1
                    while a < b && nums[a] == nums[a-1] { a += 1 }
                    while a < b && nums[b] == nums[b+1] { b -= 1 }
                } else {
                    sum > num ? (b -= 1) : (a += 1)
                }
            }
        }
        return result
    }
}
