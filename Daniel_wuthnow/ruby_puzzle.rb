# def one arr
# 	sum = 0
# 	for i in arr
# 		sum += i
# 	end
# 	print sum
# 	print arr.find_all {|i| i >10}
# end
# one [3,5,1,2,7,9,8,13,25,32]

# def two arr
# 	s = arr.shuffle
# 	t = arr.find_all { |i| i.length>5 }
# 	print s
# 	print t 
# end
# two ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]

# def three arr
# 	t = arr.shuffle
# 	puts t[-1]
# 	p t[0]
# 	if t[0] == a
# 		p "vowel"
# 	end
	
		

# end
# three ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w","x", "y", "z"]

def four 
	t = Random.new
	p t.rand(100)
end