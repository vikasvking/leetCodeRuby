# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def mirror a,b
    if a==nil && b==nil
        return true
    end
    if a!=nil && b!=nil && a.val==b.val 
        x=mirror(a.left,b.right)
        y=mirror(a.right,b.left)
        return x && y
    end
    return false
end
def is_symmetric(root)
   return mirror(root,root) 
end