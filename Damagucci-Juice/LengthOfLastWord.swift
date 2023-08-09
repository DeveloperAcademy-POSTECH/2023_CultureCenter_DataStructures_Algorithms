class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        return s.trimmingCharacters(in: .whitespacesAndNewlines).split(separator: " ").map { String($0) }.last!.count
    }
}
