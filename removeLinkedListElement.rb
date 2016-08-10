# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
    dummy=ListNode.new(-1)
    dummy.next=head
    p=dummy
    while p.next
        if p.next.val==val
            p.next=p.next.next
        else
            p=p.next
        end
    end
    return dummy.next
end