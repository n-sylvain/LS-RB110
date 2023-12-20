def bubble_sort!(array)
  loop do
    swap = false
    0.upto(array.size - 2) do |index|
      if array[index] > array[index + 1]
        # p array
        array[index], array[index + 1] = array[index + 1], array[index]
        swap = true
      end
    end
    break if swap == false
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
