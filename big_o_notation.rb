# o(1) Constant Time

def is_first_number_nil(array)
  if array[0].nil?
    true
    # return "I went around once!"
  else
    false
    # return "I went around once!"
  end
end
# puts is_first_number_nil([nil,2,3,4,5])
# puts is_first_number_nil([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20])
# puts is_first_number_nil([nil,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40])


# o(n) Linear Time
def is_any_number_nil(array)
  array.each_with_index do |x, index|
    if x.nil?
      puts "I went around #{index + 1} times!"
      return true
    end
    puts "I went around #{index + 1} times!"
  end

  return false
end

# puts is_any_number_nil([1,2,3,4,nil])
# puts is_any_number_nil([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,nil])
# puts is_any_number_nil([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,nil])

# o(n ** 2) Quadratic Time
def contains_duplicates(array)
  unique_numbers = []
  found = false
  array.each_with_index do |x, outer_index|
    puts "The outer circle went around #{outer_index + 1} times!"
    unique_numbers.each_with_index do |y, inner_index|
      puts "The inner circle went around #{inner_index + 1} times!"
      if x == y
        found = true
        break
      end
    end
    if !found
      unique_numbers << x
    end
  end
  return found
end
# puts contains_duplicates([1,1])
# puts contains_duplicates([1,2,2])
# puts contains_duplicates([1,2,3,4,4])
# puts contains_duplicates([1,2,3,4,5,6,6])
# puts contains_duplicates([1,2,3,4,5,6,7,7])
# puts contains_duplicates([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,39])
#
#
# o(2 ** n) Exponential Time

def fibonacci(n)
  return n if n == 0 || n == 1
  if n >= 2
    puts "I went around again!"
    return (fibonacci(n-2) + fibonacci(n-1))
  end
end

# puts fibonacci(2)
# puts fibonacci(5)
# puts fibonacci(20)
# puts fibonacci(40)

# o(n!) factorial time
def factorial(n)
  if n == 0
    puts "I went around again!"
    return 1
  else
    puts "I went around again!"
    return n*factorial(n-1)
  end
end

puts factorial(3)

# o(log n) Logarithmic Time
def binary_search(array, value)
  first = 0
  last = array.length - 1
  i = 0

  while first <= last
    puts "I went around #{i} times!"
    mid = (first + last) / 2

    if array[mid] == value
      return "#{value} found at position #{mid + 1}."
    elsif array[mid] > value
      last = mid - 1
    elsif array[mid] < value
      first = mid + 1
    else
      return "#{value} not found in this array."
    end

    i += 1
  end
end

# puts binary_search([1,2,3,4,5], 5)
# puts binary_search([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20], 20)
# puts binary_search([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40], 40)
