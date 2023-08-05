class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var maxArea = 0
        var leftIndex = 0
        var rightIndex = height.count-1

        while leftIndex != rightIndex {
            let l = height[leftIndex]
            let r = height[rightIndex]
            let minHeight = min(l, r)
            let area = minHeight * (rightIndex - leftIndex)
            maxArea = max(area, maxArea)

            if l > r {
                rightIndex -= 1 
            } else {
                leftIndex += 1
            }
        }
        return maxArea
    }
}
