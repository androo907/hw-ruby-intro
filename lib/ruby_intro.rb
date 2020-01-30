# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  tot = 0
  for x in arr
    tot+=x
  end
  return tot
end

def max_2_sum arr
  if arr.empty?
    return 0
  end
  if arr.size == 1
    return arr[0]
  end
  max1 = arr[0]
  max2 = arr[1]
  for x in arr[1..-1]
    if x > max1
      max2 = max1
      max1 = x
    elsif x > max2
      max2 = x
    end
  end
  return max1+max2
end

def sum_to_n? arr, n
  i=1
  while i<arr.length
    for x in arr[i..-1]
      if arr[i-1] + x == n
        return true
      end
    end
    i+=1
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  vowels = ['a','e','i','o','u','A','E','I','O','U']
  letters = /[a-zA-Z]/
  if s.empty?
    return false
  end
  if s[0].match(letters)
  else
    return false
  end
  
  for x in vowels
    if(s[0] == x)
      return false
    end
  end
  return true
end

def binary_multiple_of_4? s
  if s == "0"
    return true
  end
  if s.length < 3
    return false
  end
  s.each_char{ |x|
    if x == '0'
    elsif x == '1'
    else
      return false
    end
  } 
  
  if s[s.length-1] == '1'
    return false
  elsif s[s.length-2] == '1'
    return false
  end
  return true
    
end

# Part 3

class BookInStock
  def initialize(is, pr)
    @isbn = is
    @price = pr
    raise ArgumentError.new{
      "ISBN was left blank please provide valid input."
    } if is.empty?
    raise ArgumentError.new{
      "Price needs to be greater than 0."
    } if pr <= 0
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(isbn)
    @isbn = isbn
    raise ArgumentError.new{
      "ISBN was left blank please provide valid input."
    } if isbn.empty?
  end
  
  def price
    @price
  end
  
  def price=(price) 
    @price = price
    raise ArgumentError.new{
      "Price needs to be greater than 0."
    } if price <= 0
  end
  def price_as_string
    temp = sprintf("%.2f",@price)
    return "$#{temp}"
  end
end
