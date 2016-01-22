def subCount(str)
	m=0
	a=str.split(//)
	a.each do |i|
		m+=1	if i=="3"
	end
	return ((m*(m-1))/2)+m
end
puts "Enter String containing 3 and 5"
str=gets.chomp
puts "No. of substrings #{subCount(str)}"
