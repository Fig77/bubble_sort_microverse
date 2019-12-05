# frozen_string_literal: true

def bubble_sort(arr)
  order = false
  until order
    order = true
    (0...arr.length - 1).each do |k|
      if arr[k] > arr[k + 1]
        arr[k], arr[k + 1] = arr[k + 1], arr[k]
        order = false
      end
    end
  end
  return arr
end

def bubble_sort_by(array)
  swap = false
  until swap
    swap = true
    i = 0
    loop do
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        swap = false
      end
      i += 1
      break if i == (array.length - 1)
    end
  end
  return array
end
