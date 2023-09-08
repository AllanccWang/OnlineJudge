#UVa 11240 Antimonotonicity
def Antimonotonicity(x,a)
    f,s=1,1
	(1...x).each{|i|
		if f==1 && a[i-1]>a[i]
			s+=1
			f=0
		elsif f==0 && a[i-1]<a[i]
			s+=1
			f=1
		end
	}
	return s
end
