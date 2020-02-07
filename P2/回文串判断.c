#include<stdio.h>

int main(){
	int n,i;
	int judge = 1;
	char a[20];
	scanf("%d\n",&n);
	for(i=0;i<n;i++){
		scanf("%c",&a[i]);
	}
	for(i=0;i<n/2;i++){
		if(a[i]==a[n-1-i]){
			judge = 1;
		}
		else{
			judge = 0;
		}
	}
	printf("%d",judge);
}
