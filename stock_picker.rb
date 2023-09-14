SAMPLE = [17,3,6,9,15,8,6,1,10]

# Check each number

# If number is greater than next, continue
# else calculate current - next and store value pair in hash
# with result as key and pair in value
# keep doing until finish array
#
# After all combinations are done, sort hasy by key (hash.sort)
# get hash.sort.last (meaining the highest)

def stock_picker(numbers_array = SAMPLE)
  combinations = Hash.new

  numbers_array.each_with_index do |num, i|

    # Guard clauses
    ## Checks that we're not iterating over the last element of the array
    break if i + 1 >= numbers_array.length
    ## If next number is smaller, it's definitely not a good pair. Skip
    next if num >= numbers_array[i + 1]

    # iteration over remaining positions, starting on the current + 1 and
    # ending in array.length (exclusive)
    ((i + 1) ... numbers_array.length).each do |pos|
      result = numbers_array[pos] - num
      next if result <= 0

      # Store in the hash the result and the current index together with the position
      # we're iterating over within this inner loop
      combinations[ result ] = [i, pos]
    end

  end

  # This sorts the hash by key and returns an multi-dimentional array.
  # The last element of the last array is the key-value we're looking for.
  combinations.sort.last.last
end

best_days_combination = stock_picker
print best_days_combination
