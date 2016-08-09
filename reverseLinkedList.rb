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
def reverse_list(head)
    if head==nil
        return head
    end
    pre=nil
    current=head
    nxt=nil
    while current
        nxt=current.next
        current.next=pre
        pre=current
        current=nxt
    end
    head=pre
    return head
end