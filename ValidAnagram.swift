class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var hashmap = [Character: Int]()
        for char in s {
            hashmap[char, default: 0] += 1
        }

        for char in t {
            hashmap[char, default: 0] -= 1
        }

        for count in hashmap.values {
            if count != 0 { return false }
        }
        return true 
    }
}
