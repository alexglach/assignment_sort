# insertion_sort.rb
require 'pry'
# 1,3,2,5
#1,2,3,6 =<5

def insertion_sort(nums)
  arr = [nums[0]]
  nums[1..-1].each do |num|
    arr.each_with_index do |i, arr_index|
      if num < i
        insert(arr, num, arr_index)
        break
      elsif arr_index == (arr.length)-1
        # binding.pry
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



p insertion_sort([1,3,2,5,7,4,10])
