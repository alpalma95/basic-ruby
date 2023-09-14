SAMPLE = [4,3,78,2,0,2]

def bubble_sort(arr = SAMPLE)
  is_sorted = false
  max_index = arr.length - 1

  while !is_sorted do
    count = 0

    (0..max_index).each do |i|
      break if i + 1 > max_index

      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        count += 1
      end
    end

    if count == 0
      is_sorted = true
    end

    max_index -= 1
  end

  print arr
end

bubble_sort [1, 86, 33, 99, 1, 3, 4, 6, 56, 69]
