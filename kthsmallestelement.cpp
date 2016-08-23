class Solution {
public:
    struct HeapNode
    {
        int val,r,c;
    };
    void swap(HeapNode *x,HeapNode *y)
    {
        HeapNode temp=*x;
        *x=*y;
        *y=temp;
    }
    void minHeapify(HeapNode harr[],int i,int heapsize)
    {
        int l=2*i+1;
        int r=2*i+2;
        int smallest=i;
        if(l < heapsize&&harr[l].val<harr[i].val)
            smallest=l;
        if(r<heapsize&&harr[r].val<harr[smallest].val)
            smallest=r;
        if(smallest!=i)
        {
            swap(&harr[i],&harr[smallest]);
            minHeapify(harr,smallest,heapsize);
        }
    }
    void buildHeap(HeapNode harr[],int n)
    {
        int i=(n-1)/2;
        while(i>=0)
        {
            minHeapify(harr,i,n);
            i--;
        }
    }
    int kthSmallest(vector<vector<int>>& matrix, int k) {
        int n=matrix.size();
        HeapNode harr[n];
        for(int i=0;i<n;i++)
            harr[i]={matrix[0][i],0,i};
        buildHeap(harr,n);
        HeapNode hr;
        for(int i=0;i<k;i++)
        {
            hr=harr[0];
            int nextval=(hr.r<(n-1))?matrix[hr.r+1][hr.c]:INT_MAX;
            harr[0] =  {nextval, (hr.r) + 1, hr.c};
            minHeapify(harr,0,n);
        }
        return hr.val;
    }
};