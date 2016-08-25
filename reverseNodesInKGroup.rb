# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def reverse_k_group(head, k)
    return head if (k-=1)==0
    dummy=ListNode.new(0)
    tails=dummy
    fast,slow=head,head
    while fast
        k.times{fast && fast =fast.next}
        break if fast.nil?
        curr,prev=slow,nil
        while prev!=fast
            curr_next=curr.next
            curr.next=prev
            prev=curr
            curr=curr_next
        end
        tails.next=fast
        tails=slow
        fast,slow=curr,curr
    end
    tails.next=slow
    dummy.next
end