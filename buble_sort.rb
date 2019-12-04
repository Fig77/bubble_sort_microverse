def bubble_sort(arr)
	order = false
	until order do
		order = true
		for k in 0...arr.length-1
			if arr[k] > arr[k+1]
				arr[k], arr[k+1] = arr[k+1], arr[k]
				order = false
			end
		end
	end
end

def bubble_sort_by(array)
	swap= false
	while !swap
		swap = true
		i = 0
		loop do
			if yield(array[i],array[i+1]) > 0
				array[i], array[i+1] = array[i+1], array[i]
				swap=false
			end
			i += 1
			if i == (array.length-1)
				break
			end	
		end
	end
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
	left.length - right.length
end
