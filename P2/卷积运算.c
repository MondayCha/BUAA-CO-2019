#include <stdio.h>

int main(){
	int m1,n1,m2,n2;
	int i,j,k,t;
	int a[11][11],b[11][11];
	int c[11][11] = {0};
	
	scanf("%d%d%d%d",&m1,&n1,&m2,&n2);
	
	for(i=0;i<m1;i++){
		for(j=0;j<n1;j++){
			scanf("%d",&a[i][j]);
		}
	}
	for(i=0;i<m2;i++){
		for(j=0;j<n2;j++){
			scanf("%d",&b[i][j]);
		}
	}
	for(i=0;i<m1-m2+1;i++){
		for(j=0;j<n1-n2+1;j++){
			for(k=0;k<m2;k++){
				for(t=0;t<n2;t++){
					c[i][j]+=a[i+k][j+t]*b[k][t];
				}
			}
		}
	}
	for(i=0;i<m1-m2+1;i++){
		for(j=0;j<n1-n2+1;j++){
			printf("%d ",c[i][j]);
		}
		printf("\n");
	}
} 
