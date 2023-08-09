class RandomizedSet {
    var collection: Set<Int> = []

    init() {
        
    }
    
    func insert(_ val: Int) -> Bool {
        if !collection.contains(val) {
            collection.insert(val)
            return true
        } else {
            return false
        }
    }
    
    func remove(_ val: Int) -> Bool {
        if collection.contains(val) {
            collection.remove(val)
            return true
        }  else {
            return false
        }
    }
    
    func getRandom() -> Int {
        if let first = collection.randomElement() {
            return first
        }
        return 0
    }
}

/**
 * Your RandomizedSet object will be instantiated and called as such:
 * let obj = RandomizedSet()
 * let ret_1: Bool = obj.insert(val)
 * let ret_2: Bool = obj.remove(val)
 * let ret_3: Int = obj.getRandom()
 */

