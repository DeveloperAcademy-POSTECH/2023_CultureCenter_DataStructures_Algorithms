class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var reverseMatrix = board 
        var threeByThreeBoard: [[Character]] = Array(repeating: [], count: 9)
        for r in 0..<board.count {
            for c in 0..<board[r].count {
                let value = board[r][c]
                if r != c {
                    let reverse = board[c][r]
                    reverseMatrix[r][c] = reverse
                    reverseMatrix[c][r] = value
                }

                switch r {
                    case 0...2:
                    switch c {
                        case 0...2:
                            threeByThreeBoard[0].append(value)
                        case 3...5:
                            threeByThreeBoard[1].append(value)
                        default:
                            threeByThreeBoard[2].append(value)
                    }
                    case 3...5:
                    switch c {
                        case 0...2:
                        threeByThreeBoard[3].append(value)
                        case 3...5:
                        threeByThreeBoard[4].append(value)
                        default:
                        threeByThreeBoard[5].append(value)
                    }
                    default:
                    switch c {
                        case 0...2:
                        threeByThreeBoard[6].append(value)
                        case 3...5:
                        threeByThreeBoard[7].append(value)
                        default:
                        threeByThreeBoard[8].append(value)
                    }
                }
            }
        }

        for idx in 0..<9 {
            if !isValidRow(reverseMatrix[idx]) {
                return false
            }

            if !isValidRow(threeByThreeBoard[idx]) {
                return false
            }

            if !isValidRow(board[idx]) {
                return false 
            }
        }

        return true
    }

    func isValidRow(_ row: [Character]) -> Bool {
        var tempRow = [Character]()
        for i in 0..<row.count {
            if row[i] == "." { continue }
            if let _ = tempRow.firstIndex(of: row[i]) {
                return false
            }
            tempRow.append(row[i])
        }
        return true 
    }
}
