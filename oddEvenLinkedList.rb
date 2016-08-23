# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def odd_even_list(head)
    if(head==nil)
        return head
    end
    pOdd=head
    p=head.next
    pNext=nil
    while p && (pNext=p.next)
        p.next=pNext.next
        pNext.next=pOdd.next
        pOdd.next=pNext
        p=p.next
        pOdd=pOdd.next
    end
    return head
end