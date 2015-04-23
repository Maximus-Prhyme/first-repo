

# if (theNumber is divisible by 3) and (theNumber is divisible by 5) then
# 	print "FizzBuzz"
#   else if (theNumber is divisible by 3) then
# 	print "Fizz"
#   else if (theNumber is divisible by 5) then
# 	print "Buzz"
#   else /* theNumber is not divisible by 3 or 5 */
# 	print theNumber
#   end if


# 	puts (1..100).each { |number|
# 	if number % 3 == 0 and number % 5 == 0
# 		print "FizzBuzz"
# 	elsif number % 3 == 0
# 		print "Fizz"
# 	elsif number % 5 == 0
# 		print "Buzz"
# 	else 
# 		print number
# 	end
# }


	puts (1..100).map { |i|
		f = (i % 3 == 0 ? 'Fizz': nil)
		b = (i % 5 == 0 ? 'Buzz': nil)
		f || b ? "#{f}#{b}" : i
	}







