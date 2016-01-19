def unique_char(string)
	bool=true;
	count = Hash.new(0) 
	string.downcase.each_char do |i|
	count[i] += 1 
	end 
	count.each do |key ,value|
			if count[key]>1 
			return bool=false
			end	
			return bool
		end
end
string=gets.chomp
puts unique_char(string)
