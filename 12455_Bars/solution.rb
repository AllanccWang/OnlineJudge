#UVa 12455 Bars
#s : length of the bar we want to obtain
#n : number of bars we have
#a : each test case representing the length of the bars
def Bars(s,n,a)
    dp=[-1]*(s+1)
    dp[0]=1
    for i in (0...n)
        for j in (s..a[i]).step(-1)
            dp[j]=1 if dp[j-a[i]]==1
	end
    end
    dp[s]==1?"YES":"NO"
end
