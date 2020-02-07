#include<stdio.h>

int main(){
	int n,i;
	int now=1,sum=0;
	scanf("%d",&n);
	for(i=1;i<n+1;i++){
		now*=i;
		sum+=now;
	}
	printf("%d",sum);
	return 0;
} 
