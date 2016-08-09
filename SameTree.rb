# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
    if p==nil && q==nil
        return true
    end
    if p!=nil && q!=nil
        if p.val==q.val
            return is_same_tree(p.left,q.left) && is_same_tree(p.right,q.right)
        else
            return false
        end
    else
        return false
    end
end