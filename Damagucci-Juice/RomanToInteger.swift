class Solution {
    func romanToInt(_ s: String) -> Int {
        var sum = 0
        let arr: [Int] = Array(s).map {
            switch String($0) {
            case "I":
                return 1
            case "V":
                return 5
            case "X":
                return 10
            case "L":
                return 50
            case "C":
                return 100
            case "D":
                return 500
            case "M":
                return 1000
            default:
                return 0
            }
        }
        
        for (offset, value) in arr.enumerated() {
            if offset == 0 {
                sum += value
            } else {
                let beforeValue = arr[offset - 1]
                if beforeValue < value {
                    sum -= beforeValue * 2
                }
                sum += value
            }
        }
        return sum
    }
}
