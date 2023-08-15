class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        var originZeros: [[Bool]] = Array(repeating: Array(repeating: false, count: matrix[0].count), count: matrix.count)
        // originZeros의 0인 포인트를 셋업
        for r in 0..<matrix.count {
            for c in 0..<matrix[r].count where matrix[r][c] == 0 {
                originZeros[r][c] = true 
            }
        }

        // 원래 0인 좌표 근처만 0으로 바꾸기
        for r in 0..<matrix.count {
            for c in 0..<matrix[r].count where originZeros[r][c] {
                // 행을 0의 배열로 저장
                matrix[r] = [Int](repeating: 0, count: matrix[0].count)

                // 열을 0의 배열로 저장
                for k in 0..<matrix.count {
                    matrix[k][c] = 0
                }
            }
        }
    }
}
