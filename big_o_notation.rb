# o(1) Constant Time

def is_first_number_nil(array)
  if array[0].nil?
    true
  else
    false
  end
end

puts is_first_number_nil([nil])
puts is_first_number_nil([1,2,3,4,5,6,7,8,9,10])

# o(n) Linear Time
def is_any_number_nil(array)
  array.each do |x|
    if x.nil?
      return true
      break
    end
  end

  return false
end

puts is_first_number_nil([nil])
puts is_first_number_nil([1,2,3,4,nil,6,7,8,9,nil])

# o(n ** 2) Quadratic Time
def contains_duplicates(array)
  unique_numbers = []
  found = false
  array.each do |x|
    unique_numbers.each do |y|
      if x == y
        found = true
        break
      end
    end
    if !found
      unique_numbers << x
    end
  end
  printf "exists: input_size: %6d, inner_loops: %d\n", array.length, counter
  return found
end

puts contains_duplicates([1,2,3,4,5,6,7,8,9,10])
puts contains_duplicates([1,2,3,4,5,6,7,8,10,10])


# o(2 ** n) Exponential Time

def fibonacci(n)
  return n if n == 0 || n == 1
  if n >= 2
    return (fibonacci(n-2) + fibonacci(n-1))
  end
end

puts fibonacci(2)
puts fibonacci(3)
puts fibonacci(5)
puts fibonacci(8)
puts fibonacci(13)
puts fibonacci(1000)
