#UVa 11934 Magic Formula
fin.each_line do |line|
	a,b,c,d,l=line.split.map &:to_i
	if (a+b+c+d+l)!=0
		cnt=0
		(0..l).each{|i|cnt+=1 if (a*i*i+b*i+c)%d==0}
		fout.puts cnt
	end
end
