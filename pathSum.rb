# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} sum
# @return {Boolean}
def has_path_sum(root, sum)
    if root==nil
        return false
    else
        if root.left==nil && root.right==nil
            return root.val==sum
        end
        if root.left
            root.left.val+=root.val
            if has_path_sum(root.left,sum)
                return true
            end
        end
        if root.right
            root.right.val+=root.val
            if has_path_sum(root.right,sum)
                return true
            end
        end
        return false
    end
end