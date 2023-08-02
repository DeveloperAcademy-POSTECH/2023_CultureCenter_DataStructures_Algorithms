class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var pointOne = 0, pointTwo = 1
        let lastIndex = numbers.count-1
        while true {
            let sum = numbers[pointOne] + numbers[pointTwo]
            if sum == target {
                return [pointOne+1, pointTwo+1]
            }
            if sum < target {
                if pointTwo == lastIndex {
                    pointOne += 1
                    pointTwo = pointOne + 1
                    continue
                }
                pointTwo += 1
            }
            if sum > target {
                pointOne += 1
                pointTwo = pointOne + 1
            }
        }
    }
}
