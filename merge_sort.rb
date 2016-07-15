# merge_sort.rb
# [1,4,7]
require 'pry'

def merge_sort(arr)

  return arr if arr.length <= 1
  mid = arr.length/2
  first = merge_sort(arr[0..mid-1])
  second = merge_sort(arr[mid..arr.length-1])
  merge(first, second)

end

def merge(first, second)
  arr = []
  i = 0
  j = 0
  length = first.length + second.length
  while arr.length < length
    if i == first.length
      (j..second.length-1).each { |index| arr << second[index] }
    elsif j == second.length
      (i..first.length-1).each { |index| arr << first[index] }
    else
      if first[i] <= second[j]
        arr << first[i]
        i += 1
      else
        arr << second[j]
        j += 1
      end
    end
  end
  arr
end

p merge_sort([1,4,7,1,3,4,5])
p merge_sort([1,4,7,1,3,4,5,-12,0,12,14,5,8,5,1,2,3,-9])
