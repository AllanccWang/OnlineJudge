#UVa 10336 Rank the Languages - force validation
n=fin.readline.to_i
n.times{|cases|
	m,n=fin.readline.split.map &:to_i
	vis=[[false]*n]*m
  	'''
	This actually creates a single array with "n" number of [false], 
	but it creates another array which just holds "m" references to that array. 
	The code above only creates two arrays
	'''
	w=[]
	l=[]
	m.times{
		s=fin.readline.chomp.chars
		w+=[s]
		s.map{|c| l+=[c]if !l.include?(c)}
	}

	d=[[1,0],[0,1],[0,-1],[-1,0]]
	ans=[]
	l.each{|c|
		cnt=0
		(0...m).map{|i|
		for j in (0...n)
			if w[i][j]==c && !vis[i][j]
				stk=[[i,j]]
				vis[i][j]=true
				cnt+=1
				while stk.size!=0
					x,y=stk[0][0],stk[0][1]
					stk=stk[1..]
					for dir in d
						a,b=x+dir[0],y+dir[1]
						if a>=0 && a<m && b>=0 && b<n && w[a][b]==c && !vis[a][b]
							stk+=[[a,b]]
							vis[a][b]=true
						end
					end
				end
			end
		end
		}
		ans+=[[c,cnt]]
	}
	fout.write "World ##{cases+1}\n"
	ans.sort_by{[-_1[1],_1[0]]}.each{
		fout.write "#{_1[0]}: #{_1[1]}\n"
	}
	
}
