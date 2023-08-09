func toEatToBeEat() -> [Int] {
    let t = Int(readLine()!)!
    var counts = [Int]()
    for _ in 0..<t {
        let _ = readLine()
        let a = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted()
        let b = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted()
        var count = 0
        for aNum in a {
            for bNum in b {
                if aNum < bNum {
                    break
                } else if aNum > bNum {
                    count += 1   
                }
            }
        }
        counts.append(count)
    }
    return counts
}

toEatToBeEat().forEach { cnt in
    print(cnt)
}

