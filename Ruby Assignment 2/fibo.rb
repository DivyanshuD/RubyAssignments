def fib(n)
	if(n==1)
		return 1
	elsif(n==2)
		return 1
	end

	return fib(n-1)+fib(n-2)
end
def fibo(n,a,b)
	c=b
	d=a+b
	if(n==1)
		return a
	elsif(n==2)
		return b
	else
		n-=1
		fibo(n,c,d)
	end	
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
	puts fibo(n,a,b)
when 2
	puts fib(n)
end

