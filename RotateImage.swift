class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        var swapped = Array(repeating: Array(repeating: false, count: matrix.count), count: matrix.count)
        for r in 0..<matrix.count {
            for c in 0..<matrix[r].count {
                if r != c && !swapped[r][c] {
                    let temp = matrix[r][c]
                    matrix[r][c] = matrix[c][r]
                    matrix[c][r] = temp 
                    swapped[r][c] = true 
                    swapped[c][r] = true 
                }
            }
        }

        swapped = Array(repeating: Array(repeating: false, count: matrix.count), count: matrix.count)

        for r in 0..<matrix.count {
            for c in 0..<matrix[r].count {
                if (matrix.count % 2 == 0) && !swapped[r][c]{
                    let foo = matrix[r][c]
                    matrix[r][c] = matrix[r][matrix.count - c - 1]
                    matrix[r][matrix.count - c - 1] = foo            
                    swapped[r][c] = true 
                    swapped[r][matrix.count-c-1] = true
                } else { 
                    if ((matrix.count / 2) != c) && !swapped[r][c] {
                        let foo = matrix[r][c]
                    matrix[r][c] = matrix[r][matrix.count - c - 1]
                    matrix[r][matrix.count - c - 1] = foo
                    swapped[r][c] = true 
                    swapped[r][matrix.count-c-1] = true
                    }
                }
            }
        }
    }
}
