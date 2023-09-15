#UVa 706 LC-Display
m=[[" - ","| |","   ","| |"," - "], #0 in LC
["   ","  |","   ","  |","   "], #1 in LC
[" - ","  |"," - ","|  "," - "], #2 in LC
[" - ","  |"," - ","  |"," - "], #3 in LC
["   ","| |"," - ","  |","   "], #4 in LC
[" - ","|  "," - ","  |"," - "], #5 in LC
[" - ","|  "," - ","| |"," - "], #6 in LC
[" - ","  |","   ","  |","   "], #7 in LC
[" - ","| |"," - ","| |"," - "], #8 in LC
[" - ","| |"," - ","  |"," - "]] #9 in LC

while 1
	s,n=fin.readline.split
	break if [s,n]==['0','0']
	s=s.to_i
	5.times{|i|
		line=[]
		n.chars.map(&:to_i).map{|k|
			line+=[m[k][i][0]+m[k][i][1]*s+m[k][i][2]]
		}
		if i%2==0
			fout.write line*" "
			fout.write "\n"
		else
			s.times{fout.write line*" "+"\n"}
		end
	}
end
