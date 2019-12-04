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