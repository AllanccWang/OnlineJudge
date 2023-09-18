#UVa 10921 Find the Telephone
s=["ABC","DEF","GHI","JKL","MNO","PQRS","TUV","WXYZ"]
fin.readlines.each{|line|
	c=0
	h=0
	ans=line.chomp.chars.map{|l|
		h+=1 if l=="-";s.each{|k| l,c=s.index(k)+2,c+1 if /#{l}/=~k} if ("A".."Z").include?(l)
		l
	}*""
	fout.puts [ans,c,h]*" "
}
