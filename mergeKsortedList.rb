# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode[]} lists
# @return {ListNode}
def mergeSorted(a,b)
    result=nil
    return b if a.nil?
    return a if b.nil?
    if a.val<=b.val
        result=a
        result.next=mergeSorted(a.next,b)
    else
        result=b
        result.next=mergeSorted(a,b.next)
    end
    return result
end
        
def merge_k_lists(lists)
    return nil if lists.empty?
    last=lists.size-1
    while last!=0
        i,j=0,last
        while i<j
            lists[i]=mergeSorted(lists[i],lists[j])
            i+=1
            j-=1
            last=j if i>=j
        end
    end
    return lists[0]
end