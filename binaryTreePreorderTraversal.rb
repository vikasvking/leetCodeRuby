# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def preorder_traversal(root)
    ans=Array.new
    return ans if root==nil
    stack=Array.new
    
    stack << root
    while !stack.empty?
        node=stack.pop
        ans.push(node.val)
        stack.push(node.right) if node.right
        stack.push(node.left) if node.left
        
    end
    return ans
end