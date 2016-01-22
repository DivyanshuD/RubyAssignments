class Book
attr_accessor :author, :title
	def initialize (author=nil,title=nil)
		@author=author
		@title=title
	end
	def to_s
		"Author:#{author}  Title:#{title}"	
	end
	def ==(other)
    		self.class.name === other.class.name and
      		other.author == @author and
      		other.title == @title
  	end
	alias eql? ==
	def hash
    		@author.hash ^ @title.hash # XOR
  	end
end
h=Hash.new(0)
b1=Book.new("ABC","XYZ")
b2=Book.new()
b3=Book.new("JKL","MNO")
b4=Book.new("ABC","XYZ")
a=[]
a.push(b1)
a.push(b2)
a.push(b3)
a.push(b4)

a.each do |i| 
	h[i]+=1
end
h.each do |key,value| 
	puts key.to_s + " Count: #{value}"
end

puts"enter the name to be searched:"
name=gets.chomp.downcase
a.each do |book|
	puts book.to_s if book.author && !book.author.match(/^#{name}?[\w]*/i).nil?
	end		


