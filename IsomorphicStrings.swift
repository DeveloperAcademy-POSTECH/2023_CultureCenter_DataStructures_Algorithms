class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var sDict: [Character: [Int]] = [:]
        var tDict: [Character: [Int]] = [:]
        let arrS = Array(s)
        let arrT = Array(t)
        for i in 0..<arrS.count {
            sDict[arrS[i], default: [i]].append(i)
            tDict[arrT[i], default: [i]].append(i)
            if sDict[arrS[i], default: [i]] != tDict[arrT[i], default: [i]] { return false }
        }
        return true 
    }
}
