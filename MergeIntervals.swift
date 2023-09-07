class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        guard intervals.count > 0 else { return intervals }
        let intervals = intervals.sorted { before, cur in
            if before[0] == cur[0] {
                return before[1] < cur[1]
            } else { 
                return before[0] < cur[0] 
            }
        } + [[Int.max,Int.max]]
        var currentStart: Int = intervals.first?[0] ?? 0
        var currentEnd: Int = intervals.first?[1] ?? 0

        var result = [[Int]]()
        for i in 1..<intervals.count {
            let curInterval = intervals[i]
            if curInterval[0] <= currentEnd {
                if curInterval[1] < currentEnd {
                    continue
                } else {
                    currentEnd = curInterval[1]
                }
            } else {
                result.append([currentStart, currentEnd])
                currentStart = curInterval[0]
                currentEnd = curInterval[1]
            }
        }
        return result
    }
}
