def halvsies(arr)
  arr1 = []
  arr2 = []
  arr.each_with_index do |element, index|
    if arr.size.even?
      if index < arr.size / 2
        arr1 << element
      else
        arr2 << element
      end
    else
      if index <= arr.size / 2
        arr1 << element
      else
        arr2 << element
      end
    end
  end
  [arr1, arr2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
