# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @param {Integer} d
# @param {Integer} e
# @param {Integer} f
# @param {Integer} g
# @param {Integer} h
# @return {Integer}
def compute_area(a, b, c, d, e, f, g, h)
    area=(c-a)*(d-b)+(g-e)*(h-f)
    left,right=[a,e].max,[c,g].min
    return area unless left<right
    lower,upper=[b,f].max,[d,h].min
    return area unless lower<upper
    return area-(upper-lower)*(right-left)
end