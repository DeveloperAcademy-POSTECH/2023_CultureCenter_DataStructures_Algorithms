class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard haystack.count > 1 else { return haystack == needle ? 0 : -1 }
        guard haystack != needle else { return haystack == needle ? 0 : -1 }
        var str = haystack
        var stack = ""
        for i in 0..<haystack.count {
            stack += String(str.removeFirst())

            if stack == needle {
                return (i+1)-needle.count
            } else if stack.count == needle.count { 
                stack.removeFirst()
            }
        }
        return -1
    }
}
