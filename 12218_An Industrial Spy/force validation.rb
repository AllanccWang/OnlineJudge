#UVa 12218 An Industrial Spy - force validation
'''
The constructed number uses only each digits once in string.
For example,
if using repeated_permutation, [1,7,11,17,71,77] can be formed by string 17.
And there will be 4 prime numbers. but actual result is [7,17,71].
'''
require 'prime'
def An_Industrial_Spy(a)
	s=[]
	(1..a.size).map{|c|
		a.repeated_permutation(c).to_a.map{
			s+=[_1.join.to_i] if Prime.prime?(_1.join.to_i)
		}
	}
	puts s.uniq.size
end
