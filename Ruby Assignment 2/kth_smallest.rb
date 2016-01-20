def kthSmallest(a,l,r,k)
	if(k>0 && k<=(r-l+1))		
		pos=partition(a,l,r)
		if (pos-l==l-1)	#if pos is same as k
			return a[pos]
		elsif (pos-l>k-1)		#position is more recur  for left subarray 
			return kthSmallest(a,l,pos-1,k)
		else
			return kthSmallest(a,pos+1,r,k-pos+l-1)
		end
	end
		return Integer::MAX 		#return if k is more than no. of elements
end

def partition(a,l,r)			#partition method
	x=a[r]
	i=l
	for j in l..(r-1)		#rearranging the array
		if(a[j]<=x)
			temp=a[i]
			a[j]=a[i]
			a[i]=temp
		end
	end
		temp=a[i]		#put pivot at position
		a[r]=a[i]
		a[r]=temp
	return i			#returning pivot position
end
array=[12, 3, 5, 7, 4, 19, 26]				#initailizing array
puts "Enter the value of k"
k=gets.chomp.to_i	
element=kthSmallest(array,0,array.length-1,k)		#taking kth index value
puts "Smallest #{k}th element in the array: #{element}"	#printning kth element	
	 	

