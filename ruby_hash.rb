x = {"frist_name" => "Coding", "last_name" => "Dojo"}

puts "Your last name is Dojo" if x["last_name"].eql? "Dojo"
x.delete("frist_name")
puts x
puts "there is a name" if x.has_key?("last_name")
puts "but no frist_name" if x.has_value?("Dojo")