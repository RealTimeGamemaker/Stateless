/// @description button interaction
// You can write your code in this editor
for(var j = 0; j < 4; j++)
{
	if(lasers_on[j,0]==1)
	{
		if(lasers_on[j,1]==0)
		{
			lasers_on[j,1]=1;
		}
		else if (lasers_on[j,1]==1)
		{
			lasers_on[j,1]=0;
		}
	}
}