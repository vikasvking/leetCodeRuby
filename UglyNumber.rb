# @param {Integer} num
# @return {Boolean}
def is_ugly(num)
    if num==0
        return false
    end
    if num==0
        return true
    end
    while num%2==0
        num=num/2
    end
    while num%3==0
        num=num/3
    end
    while num%5==0
        num=num/5
    end
    return num==1
end