class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        let shortest = strs.sorted { $0.count < $1.count }.first!
        var ans = ""
        var strsArr = strs.map { Array($0) } 
        for (offset, c) in Array(shortest).enumerated() {
            var isPrefix = true 
            for arr in strsArr {
                if arr[offset] != c {
                    isPrefix.toggle()
                    break
                } 
            }
            if !isPrefix {
                break
            }
            ans += isPrefix ? String(c) : ""
        }
        return ans
    }
}
