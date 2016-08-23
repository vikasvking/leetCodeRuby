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
def delete_duplicates(head)
    p=head
    while p && p.next
        if p.val==p.next.val
            p.next=p.next.next
            next
        end
        p=p.next
    end
    return head
end