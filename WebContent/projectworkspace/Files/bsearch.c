#include<conio.h>
#include<stdio.h>
void main()
{
    int a[10],i,n,beg,mid,end,val,f=0;
    printf("enter the number of element");
    scanf("%d",&n);
    for(i=0;i<n;i++)
    {
        scanf("%d",&a[i]);
    }
    beg=0;
    end=n-1;
    printf("enter the value to be searched");
    scanf("%d",&val);
    while(beg<=end)
    {
        mid=(beg+end)/2;
        if(a[mid]==val)
        {
            f=1;
            printf("%d value has %d position",val,mid);
            break;
        }
        else if(val<a[mid])
        {
            end=mid-1;
        }
        else
        {
            beg=mid+1;
        }
    }
    if(f==0)
        printf("enter valid number");
}
