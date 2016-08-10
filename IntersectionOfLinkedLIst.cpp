/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode(int x) : val(x), next(NULL) {}
 * };
 */
class Solution {
public:
    int getCount(ListNode *head)
    {
        int l=0;
        ListNode*current=head;
        while(current)
        {
            current=current->next;
            l++;
        }
        return l;
    }
    ListNode *getinter(int a,ListNode* x,ListNode*y)
    {
        ListNode *c1=x;
        ListNode *c2=y;
        for(int i=0;i<a;i++)
        {
            if (c1==NULL)
                return NULL;
            c1=c1->next;
        }
        while (c1 && c2)
        {
            if(c1==c2)
                return c1;
            c1=c1->next;
            c2=c2->next;
        }
        return NULL;
    }
    ListNode *getIntersectionNode(ListNode *headA, ListNode *headB) {
        int c1=getCount(headA);
        int c2=getCount(headB);
        if (c1>c2)
        {
            return getinter(c1-c2,headA,headB);
        }
        else
        {
            return getinter(c2-c1,headB,headA);
        }
    }
};