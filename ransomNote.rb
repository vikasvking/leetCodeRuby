# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    hr,hm=Hash.new,Hash.new
    ransom_note.each_char do |i|
        if hr[i] then hr[i]+=1 else hr[i]=1 end
    end
    magazine.each_char do |i|
        if hm[i] then hm[i]+=1 else hm[i]=1 end
    end
    ransom_note.each_char do |i|
        return false if !hm[i] or hm[i]<hr[i]
    end
    return true
end