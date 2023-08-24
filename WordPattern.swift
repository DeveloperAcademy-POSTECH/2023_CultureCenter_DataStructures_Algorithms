class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        let arr = s.split(separator: " ").map { String($0) }
        guard arr.count == pattern.count else { return false }
        var dict = [Character: String]()
        var key = Set<Character>()
        var wordSet = Set<String>()
        for (offset, char) in pattern.enumerated() {
            if let word = dict[char], word != arr[offset] {
                return false
            } else {
                dict[char] = arr[offset]
            }
            key.insert(char)
            wordSet.insert(arr[offset])
        }

        return key.count == wordSet.count ? true : false
    }
}
