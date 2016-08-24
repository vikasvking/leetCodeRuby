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
def postorder_traversal(root)
    stack1,stack2=[],[]
    return stack2 if root==nil
    stack1 << root
    until stack1.empty?
        node=stack1.pop
        stack2 << node.val
        stack1 << node.left if node.left
        stack1 << node.right if node.right
    end
    return stack2.reverse
end