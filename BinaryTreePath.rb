# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {String[]}
def printPath path,pathlen,ans
    temp=""
    for i in (0..pathlen-1)
        temp+="#{path[i]}"
        if i!=pathlen-1
            temp+="->"
        end
       
    end
     ans.push(temp)
        temp=""
end
def printPathRecur(root,path,pathlen,ans)
    if root==nil
        return
    end
    path[pathlen]=root.val
    pathlen+=1
    if root.left==nil && root.right==nil
        printPath(path,pathlen,ans)
    else
        printPathRecur(root.left,path,pathlen,ans)
        printPathRecur(root.right,path,pathlen,ans)
    end
end
def binary_tree_paths(root)
   path=Array.new(100000)
   ans=Array.new
   printPathRecur(root,path,0,ans)
   return ans
end