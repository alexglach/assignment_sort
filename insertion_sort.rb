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
        arr.push(num)
        break
      end
    end
  end
  arr
end


def insert_sort(nums)
  count = 0
  nums[count + 1..-1].each do |num|
    nums[0..count].each_with_index do |ref, arr_index|
      if num < ref
        insert(nums, num, arr_index)
        count += 1
        break
      elsif arr_index == count
        insert(nums, num, arr_index)
        count += 1
        break
      end
    end
  end
  nums
end


def insert(arr, val, index)
  for num in (arr.length - 1).downto(index)
    arr[num+1] = arr[num]
  end
  arr[index] = val
end



p insert_sort([1,3,2,5,7,4,10])
p insert_sort([1,4,7,1,3,4,5,-12,0,12,14,5,8,5,1,2,3,-9])
