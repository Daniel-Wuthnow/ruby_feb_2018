array = []
File.open("list.txt").each do |line|
	que = line.delete("^0-9")
	num = que.to_i()
	letter = line[que.length + 1]
	array.push({q: num, line: line, letter: letter})
end
array.sort_by! { |e| [e[:q], e[:letter]] }
array.each do |key|
	puts key[:line]
end
	
# 	array.sort_by! do |e|
# 		e[:q]
# 		p e[:q]
# 	end
# 	puts array
# end

# array = [{q: 5, line: "#50 - Smith"},
# {q: 8, line: "#8 - Johnson"},
# {q: 1, line: "#100 - Sanders"},
# {q: 1, line: "#1B - Adams"},
# {q: 0, line: "#011 - Delphino"},
# {q: 1, line: "#1A - Quebec"}]

# array.sort_by! { |e| e[:q]}
# puts array

# arr = ["n1m2l3", "8d9ne2"]
# arr.each do |i|
# 	/\d+/.match(i).try(:[], 0)
# end

# line = "abc1cd2"
# p line.delete("^0-9")
