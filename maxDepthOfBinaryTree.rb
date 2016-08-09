def max_depth(root)
    if root==nil
        return 0
    end
    lh=max_depth(root.left)
    rh=max_depth(root.right)
    return [lh,rh].max+1
end