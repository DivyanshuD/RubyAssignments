def tail_quickSort(a,p,r)		#tail recursive method
	while(p<r) do			#if start is less than end
		q=partition(a,p,r)	#getting pivot element	
		tail_quickSort(a,p,q-1)	#sorting left array
		p=q+1			#jumping the sorted part
		end
return a
	end
	
def partition(a,start,last)
	i=start+1
piv=a[start]					#first element as pivot element
for j in (start+1)..last 			#rearranging the array
	if(a[j]<piv)
		temp=a[i]
		a[i]=a[j]
		a[j]=temp
		i+=1
	end
    end
	temp=a[start]				#put pivot at position
	a[start]=a[i-1]
	a[i-1]=temp
	return i-1				#returning pivot position
end
array=[2,19,5,4,3,14,2]
array=tail_quickSort(array,0,array.length- 1)
puts "array after sorting #{array}" 
