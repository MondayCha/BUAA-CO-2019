#include<stdio.h>

int map[16][16];
int temp[16][16];
int n,m,sx,sy,fx,fy;
int sum = 0;
int dx[4]={0,1,0,-1};
int dy[4]={1,0,-1,0};

void dfs(int x,int y);

int main(){
	int i,j;
	scanf("%d%d",&n,&m);
	for(i=0;i<n+2;i++){
		for(j=0;j<m+2;j++){
			temp[i][j]=1;
			map[i][j]=1;
		}
	}
	for(i=0;i<n;i++){
		for(j=0;j<m;j++){
			scanf("%d",&map[i+1][j+1]);
		}
	}
	scanf("%d%d%d%d",&sx,&sy,&fx,&fy);
	dfs(sx,sy);
	printf("%d",sum);
}

void dfs(int x,int y){
	if(x==fx&&y==fy){
		sum++;
		return;
	}
	else{
		int i;
		for(i=0;i<4;i++){
			int xx = x+dx[i];
			int yy = y+dy[i];
			if(temp[xx][yy]&&(map[xx][yy]==0)){
				temp[x][y]=0;
				dfs(xx,yy);
				temp[x][y]=1;
			}
		}
	}
}
