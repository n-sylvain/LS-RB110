def fizzbuzz(start_number, end_number)
  array = []
  start_number.upto(end_number) do |index|
    if index % 3 == 0 && index % 5 == 0
      array << "FizzBuzz"
    elsif index % 3 == 0
      array << "Fizz"
    elsif index % 5 == 0
      array << "Buzz"
    else
      array << index
    end
  end
  puts array.join(", ")
end


fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
