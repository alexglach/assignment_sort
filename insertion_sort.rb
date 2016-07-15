# insertion_sort.rb
require 'pry'

def insert_sort(nums)
  i = 1
  while i < nums.length
    j = i - 1
    temp_var = nums[i]
    while (j >= 0 && temp_var < nums[j])
      nums[j + 1] = nums[j]
      j -= 1
    end
    nums[j + 1] = temp_var
    i += 1
  end
  nums
end

# create new array version
def insertion_sort(nums)
  arr = [nums[0]]
  nums[1..-1].each do |num|
    arr.each_with_index do |i, arr_index|
      if num < i
        insert(arr, num, arr_index)
        break
      elsif arr_index == (arr.length)-1
        arr.push(num)
        break
      end
    end
  end
  arr
end

def insert(arr, val, index)
  for num in (arr.length - 1).downto(index)
    arr[num+1] = arr[num]
  end
  arr[index] = val
end



p insert_sort([5,1,7,4,10])
p insert_sort([1,4,7,1,3,4,5,-12,0,12,14,5,8,5,1,2,3,-9])
