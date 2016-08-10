# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}

def is_palindrome(head)
    temp=Array.new
    if head==nil
        return true
    end
    current=head
    while current!=nil
        temp.push(current.val)
        current=current.next
    end
    current=head
    while current!=nil
        if current.val==temp.pop
            current=current.next
        else
            return false
        end
    end
    return true
end