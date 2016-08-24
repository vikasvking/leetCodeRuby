# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} nums
# @return {TreeNode}
def util arr,start,ending
    return nil if start>ending
    mid=(start+ending)/2
    node=TreeNode.new(arr[mid])
    node.left=util(arr,start,mid-1)
    node.right=util(arr,mid+1,ending)
    return node
end
def sorted_array_to_bst(nums)
    node=util(nums,0,nums.size-1)
    return node
end