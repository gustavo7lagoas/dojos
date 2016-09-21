=begin
   Write a program that prints the numbers from 1 to 100.
   But for multiples of three print "Fizz" instead of the
   number and for the multiples of five print "Buzz". For
   numbers which are multiples of both three and five
   print "FizzBuzz".
=end
def fizzbuzz(index)
  if index % 3 == 0 and index % 5 == 0 then
    return 'fizzbuzz'
  end  
  if index % 3 == 0 then
    return 'fizz'
  end
  if index % 5 == 0 then
    return 'buzz'
  end
  return index
end

