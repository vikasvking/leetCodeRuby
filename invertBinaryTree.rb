def invert_tree(root)
    if root==nil
        return root
    end
    temp=invert_tree(root.left)
    root.left=invert_tree(root.right)
    root.right=temp
    return root
end