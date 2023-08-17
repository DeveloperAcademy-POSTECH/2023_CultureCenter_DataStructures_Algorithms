class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var charCount: [Character: Int] = [:]

        for char in magazine {
            charCount[char, default: 0] += 1 
        }

        for char in ransomNote {
            guard charCount[char, default: 0] > 0 else { return false }
            charCount[char, default: 0] -= 1
        }

        return true
    }
}
