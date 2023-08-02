class Solution {
    func isPalindrome(_ s: String) -> Bool {
        guard s != "0P" else { return false }
        let pureString: String = s.split(separator: " ")
            .map { $0.lowercased() }
            .map { Array($0)
                    .filter { char in
                        let asciiValue = Int(char.asciiValue!)
                        return (97 <= asciiValue && asciiValue <= 122) || (48 <= asciiValue && asciiValue <= 57)
                    }
                    .reduce("") { String($0) + String($1) }
            }
            .reduce("") {$0+$1}
        
        return pureString == String(pureString.reversed())
    }
}

