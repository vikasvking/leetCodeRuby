# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def append head,data
    if head==nil
        head=ListNode.new(data)
        return head
    end
    last=head
    while last.next
        last=last.next
    end
    last.next=ListNode.new(data)
    return head
end
def merge_two_lists(l1, l2)
    ans=nil
    a=l1
    b=l2
    while a && b
        if a.val<b.val
            ans=append(ans,a.val)
            a=a.next
        elsif a.val>b.val
            ans=append(ans,b.val)
            b=b.next
        else
            ans=append(ans,a.val)
            ans=append(ans,a.val)
            a=a.next
            b=b.next
        end
    end
    while a
        ans=append(ans,a.val)
        a=a.next
    end
    while b
        ans=append(ans,b.val)
        b=b.next
    end
    return ans
end