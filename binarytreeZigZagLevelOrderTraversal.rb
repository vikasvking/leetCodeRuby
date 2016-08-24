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
def zigzag_level_order(root)
    return [] if root.nil?
    q=Queue.new
    ans=[]
    itr=false
    q.push(root)
    until q.empty?
        temp=[]
        level=q.size
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
    for i in (1..ans.size-1).step(2)
        ans[i].reverse!
    end
      ans      
end