require 'pry'

def hello(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end

my_each(list) {|i| puts "So I think #{i} is junk"}

# Use the collection method 
# To make the *return-value* the answer you want
# instead of "=> nil"

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end

hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
