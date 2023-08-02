class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var str = s 
        for char in Array(t).reversed() {
            if str.isEmpty { return true }
            if char == str.last! {
                str.removeLast()
            }
        }
        return str.isEmpty
    }
}
