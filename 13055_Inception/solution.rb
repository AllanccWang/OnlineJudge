#UVa 13055 Inception
n=fin.readline.to_i
stk=[]
n.times{
	line=fin.readline.split
	if line[0][0]=='S'
		stk.push(line[1])
	elsif line[0][0]=='K'
		stk=stk[...-1] if stk.size!=0
	else
		fout.puts stk.size!=0?stk[-1]:"Not in a dream"
	end
}
