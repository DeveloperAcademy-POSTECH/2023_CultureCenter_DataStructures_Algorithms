class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var hashmap = [[Character]: [String]]()
        for str in strs {
            let arr = Array(str).sorted()
            hashmap[arr, default: []].append(str)
        }
        var retValue: [[String]] = [] 
        for strs in hashmap.values {
            retValue.append(strs)
        }
        return retValue
    }
}
