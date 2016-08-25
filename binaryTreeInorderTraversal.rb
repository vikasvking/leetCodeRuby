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
def inorder_traversal(root)
    curr=root
    s=[]
    ans=[]
    while true
        if not curr.nil?
            s << curr
            curr=curr.left
        else
            if not s.empty?
               curr=s.pop
               ans << curr.val
               curr=curr.right
           else
               break
           end
       end
   end
   ans
        
end