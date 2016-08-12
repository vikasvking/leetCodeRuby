# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def min_depth(root)
    if root==nil
        return 0
    end
    if root.left==nil && root.right==nil
        return 1
    end
    lh=Float::INFINITY
    if root.left!=nil
        lh=min_depth(root.left)+1
    end
    rh=Float::INFINITY
    if root.right!=nil
        rh=min_depth(root.right)+1
    end
    if lh<rh then return lh else return rh end
end