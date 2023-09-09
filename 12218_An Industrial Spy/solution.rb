#UVa 12218 An Industrial Spy
require 'prime'
def An_Industrial_Spy(a)
	s=[]
	(1..a.size).map{|c|
		a.permutation(c).to_a.map{
			s+=[_1.join.to_i] if Prime.prime?(_1.join.to_i)
		}
	}
	puts s.uniq.size
end
