# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}
def level_order_bottom(root)
    return [] if root.nil?
    ans,q=[],Queue.new
    q << root
    while !q.empty?
        level=q.size
        temp=[]
        while level>0
            node=q.pop
            temp << node.val
            q << node.left if node.left
            q << node.right if node.right
            level-=1
        end
        ans << temp
        temp=[]
    end
    return ans.reverse
end