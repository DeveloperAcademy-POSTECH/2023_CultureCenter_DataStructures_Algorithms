class Solution {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        var totalGas = 0
        var currentGas = 0
        var stationIndex = 0
        for i in 0..<gas.count {
            totalGas += gas[i] - cost[i]
            currentGas += gas[i] - cost[i]
            if currentGas < 0 {
                currentGas = 0
                stationIndex = i + 1
            }
        }

        guard totalGas >= 0 else { return -1 }

        return stationIndex
    }
}
