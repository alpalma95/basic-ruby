SAMPLE = [4,3,78,2,0,2]

def bubble_sort(arr = SAMPLE)

  is_sorted = false

  while !is_sorted do
    count = 0
    arr.each_with_index do |num, i|
      break if i + 1 == arr.length

      if num > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        count += 1
      end
    end

    if count == 0
      is_sorted = true
    end
  end

  print arr

end

bubble_sort
