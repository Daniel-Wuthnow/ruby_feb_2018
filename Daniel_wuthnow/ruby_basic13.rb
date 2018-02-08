# for i in 1..255
# 	puts i
# end

# puts (1..255).select { |i| i % 2 == 1  }

# def sum
# sum = 0
# (1..255).each { |i| puts "New number: #{i} Sum: #{sum += i}"} 
# end
# sum


# def arr array
# 	array.each { |i| puts i}

# end
# arr [1,3,4,5,6,7]

# def max arr
# 	puts arr.max
# end
# max [1,4,6,8,3,9]

# def ave arr
# 	sum = 0
# 	for i in arr
# 		sum += i
# 	end
# 	puts sum/arr.length
# end
# ave [1,10,4]

# def arr_odd
# 	arr = Array.new((1..255).select { |i| i.odd? })
# 	print arr
# end
# arr_odd

# def Y arr, val
# 	new_arr = arr.find_all {|i| i > val}
# 	puts new_arr.length
# end
# Y [1,2,3,4], 2

# def square arr
# 	new_arr = arr.collect { |e| e*e }
# 	print new_arr
# end
# square [1,2,3,4,5]

# def no_negs arr
# 	t = Array.new(arr.map { |e| e<0 ? 0 : e })
# 	print t
# end
# no_negs [5,4,3,2,-3,-2,2]

# def max_min_ave arr
# 	min = arr.min
# 	max = arr.max
# 	sum = 0
# 	s = arr.each {|i| sum+=i}
	
# 	p s
# 	math = {"Max" => max, "Min" => min, "Ave" => sum}
# 	# p math
# end
# max_min_ave [1,10,4]


# def max_min_avg arr
# 	h = { }
# 	sum = 0
# 	for i in arr
# 		sum += i 
# 	end
# 	h[:min] = arr.min
# 	h[:max] = arr.min
# 	h[:avg] = sum/arr.length
# 	p h
# end
# max_min_avg [1,2,3]

# def shift arr
# 	a = arr[1..-1]
# 	a.insert(-1,0)
# 	p a
# end
# shift [1, 5, 10, 7, -2]

def nums2str arr
	t = arr.map { |e| e<0 ? "Dojo" : e  }
	p t
end
nums2str [-2,3,-4]