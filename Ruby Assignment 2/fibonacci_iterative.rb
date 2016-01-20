def fib(n)				
	n-=2
	a,b,c=1,1,0
	while(n>0) do
		c=a+b
		a=b
		b=c
		n-=1
	end
	return c
end	
def fib(n,a,b)
	n-=2
	c,i=0,0	
	while(n>0) do
		c=a+b
		a=b
		b=c
		n-=1
	end
return c
end

				
puts "Enter the value of n"
n=gets.chomp.to_i
puts "1. with seed value"
puts "2. without seed value"
choice=gets.chomp.to_i
case choice
when 1 
	a=gets.chomp.to_i
	b=gets.chomp.to_i
	puts fib(n,a,b)
when 2
	puts fib(n)
end
