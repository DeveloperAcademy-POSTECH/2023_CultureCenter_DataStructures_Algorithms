class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        guard !intervals.isEmpty else { return [newInterval] }
        guard !newInterval.isEmpty else { return intervals }

        var intervals = intervals + [newInterval]
        intervals = intervals.sorted { $0[0] < $1[0] }
        var ans = [intervals[0]]

        for item in intervals[1..<intervals.count] {
            if item[0] > ans.last![1] {
                ans.append(item)
            } else {
                ans[ans.count-1][1] = max(item[1], ans.last![1])
            }
        }
        return ans
    }
}
