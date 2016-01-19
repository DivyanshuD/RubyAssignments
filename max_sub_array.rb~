def my_sub_array(a)
	start,last,cur_start,sum,max=0,0,0,0,0
	for i in 0..a.length-1 do
		sum = sum+a[i]
		if (sum>max) 
			max=sum
			last=i
			start=cur_start
		end
		if (sum<0) 	
			cur_start=i+1
			sum=0
		end
	end
	return a[start..last]
end
arr = [-2,1,-3,4,-1,2,1,-5,4]
puts my_sub_array(arr)

