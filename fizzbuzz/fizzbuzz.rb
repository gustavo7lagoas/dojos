=begin
Write a program that prints the numbers from 1 to 100.
But for multiples of three print "Fizz" instead of the
number and for the multiples of five print "Buzz". For
numbers which are multiples of both three and five
print "FizzBuzz".
=end
def fizzbuzz(index)
  fb = index
  if is_multiple_of_3?(index) and is_multiple_of_5?(index) then
    fb = 'fizzbuzz'
  elsif is_multiple_of_3?(index) then
    fb = 'fizz'
  elsif is_multiple_of_5?(index) then
    fb = 'buzz'
  end
  return fb
end

is_multiple_of = proc { | base, num | num % base == 0 }

def is_multiple_of_3?(number)
  number % 3 == 0
  is_multiple_of.call(3, number)
end

def is_multiple_of_5?(number)
  number % 5 == 0
  is_multiple_of.call(5, number)
end