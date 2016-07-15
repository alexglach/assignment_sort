def bubble_sort(arr)
  count = 1
  cycles = 2
  until count == 0
    count = 0
    (0..arr.length-cycles).each do |arr_index|
      if arr[arr_index] > arr[arr_index + 1]
        arr[arr_index], arr[arr_index + 1] = arr[arr_index + 1], arr[arr_index]
        count += 1
      end
    end
    cycles += 1
  end
  arr
end

# can optimize to not check last numbers
p bubble_sort([3,1,2,5,7,4,10])
p bubble_sort([1,4,7,1,3,4,5,-12,0,12,14,5,8,5,1,2,3,-9])
