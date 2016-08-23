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
def swap_pairs(head)
    p=head
    while p && p.next
        temp=p.val
        p.val=p.next.val
        p.next.val=temp
        p=p.next.next
    end
    return head
end