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
def push(node,n)
    newNode=ListNode.new(n)
    if node==nil
        node=newNode
        return node
    end
    curr=node
    while curr.next!=nil
        curr=curr.next
    end
    curr.next=newNode
    return node
end
def add_two_numbers(l1, l2)
    ans=nil
    carry=0
    while l1 && l2
        temp=carry+l1.val+l2.val
        if temp>9
            carry=temp/10
            temp=temp%10
        else
            carry=0
        end
        ans=push(ans,temp)
        l1=l1.next
        l2=l2.next
    end
    while l1!=nil
            temp=carry+l1.val
            if temp>9
                carry=temp/10
                temp=temp%10
            else
                carry=0
            end
            ans=push(ans,temp)
            l1=l1.next
        end
          while l2!=nil
            temp=carry+l2.val
            if temp>9
                carry=temp/10
                temp=temp%10
            else
                carry=0
            end
            ans=push(ans,temp)
            l2=l2.next
        end
    if carry>0
        ans=push(ans,carry)
    end
    return ans
end