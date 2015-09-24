# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce 0, :+
end

def max_2_sum arr
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  return false if arr.empty? && n.zero?
  arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

def binary_multiple_of_4? s
  int = s.to_i(2)   #converts to an integer
  check_if_valid = /[^0-1]/.match(s)
  (int % 4 == 0 && check_if_valid == nil && !s.empty?) ? true : false
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    format("$%.2f", @price) #formats the price as instructed
  end
end
