
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
class Solution {
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        // 每列都是上一列x2
        // 若是第n列：個數 2的n-1次方
        guard let root = root else { return [] }
        let list = [root]
        for i in list {
            print(i.left!)
        }
//        print(list)
        return [[0]]
    }
}

let testSolution = Solution()
testSolution.levelOrderBottom(TreeNode(1, TreeNode(2, TreeNode(33), TreeNode(44)), TreeNode(74)))

