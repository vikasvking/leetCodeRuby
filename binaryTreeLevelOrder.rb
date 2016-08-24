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
def level_order(root)
    ans=[]
    return [] if root.nil?
    q=Queue.new
    q.push(root)
    until q.empty?
        temp=[]
        level=q.size
        while level>0
            node=q.pop
            temp << node.val
            q.push(node.left) if node.left
            q.push(node.right) if node.right
            level-=1
        end
        ans << temp
        temp=[]
    end
    ans
end