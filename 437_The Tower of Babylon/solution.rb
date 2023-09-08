#UVa 437 The Tower of Babylon
def The_Tower_of_Babylon(a)
	#sort the array by x value
	a=a.sort_by{_1[0]}
	h=[0]*a.size
	maxH=0
	#check each block can be matched the criteria
	(0...a.size).map{|i|
		h[i]=a[i][2]
		for j in (0...i)
			if a[i][0]>a[j][0] && a[i][1]>a[j][1] && h[i]<h[j]+a[i][2]
				h[i]=h[j]+a[i][2]
				maxH=[maxH,h[i]].max
			end
		end				
	}
	return maxH
end
c=1
while 1
	n=fin.readline.to_i
	exit if n==0
	a=[]
	#six combination of x,y,z
	n.times{a+=fin.readline.split.map(&:to_i).permutation(3).to_a.uniq}
	fout.write "Case #{c}: maximum height = #{The_Tower_of_Babylon(a)}\n"
	c+=1
end
