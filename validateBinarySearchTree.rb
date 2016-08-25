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
def is_valid_bst(root)
    ans,s=[],[]
    curr=root
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
    for i in (0..ans.size-2)
        return false if ans[i]>=ans[i+1]
    end
    return true
end