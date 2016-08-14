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
def height root
    if root==nil
        return 0
    end
    l,r=1,1
    l+=height(root.left)
    r+=height(root.right)
    if l>r then return l else return r end
end
def is_balanced(root)
   if root==nil
       return true
   end
   l=height(root.left)
   r=height(root.right)
   if l-r>1 || l-r<-1
       return false
   end
   return is_balanced(root.left) && is_balanced(root.right)
end