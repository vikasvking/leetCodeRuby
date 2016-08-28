# @param {String} secret
# @param {String} guess
# @return {String}
def get_hint(secret, guess)
    bulls,cows=0,0
    hs,hg={},{}
    (0...secret.size).each{|i|
         if secret[i]==guess[i]
             bulls+=1
             next
         end
        hs[secret[i]] ||= 0; hs[secret[i]]+=1
        hg[guess[i]] ||=0 ;hg[guess[i]]+=1
    }
    hs.each do |k,v|
        cows+=[v,hg[k]].min if hg.key?(k)
    end
    return "#{bulls}A#{cows}B"
end