# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
    if head==nil or n<=0
        return nil
    end
    dummy=ListNode.new(0)
    dummy.next=head
    head=dummy
    p1=p2=head
    for i in (0..n-1)
        if p2==nil
            return nil
        end
        p2=p2.next
    end
    while p2.next!=nil
        p2=p2.next
        p1=p1.next
    end
    p1.next=p1.next.next
    return head.next
    
    
end