class Solution {
    func intToRoman(_ num: Int) -> String {
        var target = num 
        var ans = ""
        var str = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
        var num = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]

        for i in 0..<str.count where target >= num[i] {
            for _ in 0..<Int(target/num[i]) {
                ans += str[i]
            }
            target %= num[i]
        }
        
        return ans
    }
}
