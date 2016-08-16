# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} k
# @return {Integer}
def kth_smallest(root, k)
    ans=Array.new
    s=Array.new
    node=root
    while true
        if node
            s.push(node)
            node=node.left
        else
            if !s.empty?
                node=s.pop
                ans.push(node.val)
                node=node.right
            else
                break
            end
        end
    end
    return ans[k-1]
end