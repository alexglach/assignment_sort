def bubble_sort(arr)
  count = 1
  until count == 0
    count = 0
    arr.each_with_index do |num, arr_index|
      unless arr_index >= arr.length - 2
        if num > arr[arr_index + 1]
          arr[arr_index], arr[arr_index + 1] = arr[arr_index + 1], arr[arr_index]
          count += 1
        end
      end
    end
  end
  arr




end

p bubble_sort([3,1,2,5,7,4,10])
