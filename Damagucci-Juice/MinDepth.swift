/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func minDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }

        func traverse(_ node: TreeNode?, _ depth: Int) -> Int {
            guard let node = node else { return 100001 }
            let left = node.left, right = node.right
            if left == nil && right == nil {
                return depth
            } 
            return min(traverse(left, depth+1), traverse(right,depth+1))
        }

        return traverse(root, 1)
    }
}
