class Solution {
    func gameOfLife(_ board: inout [[Int]]) {
        // MARK: - 초기화
        let colCount = board[0].count
        let rowCount = board.count
        let emptyArray = Array(repeating: -1, count: colCount + 2)
        var nextState = board

        for (offset, row) in board.enumerated() {
            board[offset] = [-1] + row + [-1]
        }
        board.append(emptyArray)
        board.insert( emptyArray, at: 0)

        for r in 1..<board.count-1 {
            for c in 1..<board[r].count-1 {
                nextState[r-1][c-1] = liveOrDie(r,c) ? 1 : 0
            }
        }

        board = nextState

        func liveOrDie(_ r: Int, _ c: Int) -> Bool { 
            let locate = board[r][c]
            var liveCount = 0
            var deadCount = 0
            for thisR in r-1...r+1 {
                for thisC in c-1...c+1 {
                    let current = board[thisR][thisC]
                    if thisR == r && thisC == c || current == -1 { continue }
                    if current == 1 {
                        liveCount += 1
                    } else if current == 0 {
                        deadCount += 1
                    }
                }
            }

            if locate == 1 {
                if liveCount < 2 {
                    return false 
                } else if liveCount == 2 || liveCount == 3 { 
                    return true
                } else if deadCount > 3 {
                    return false 
                }
            } else if locate == 0 {
                if liveCount == 3 {
                    return true 
                }
            }

            return false
        }
    }
}
