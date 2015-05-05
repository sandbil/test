
def fact(n)
  n <= 1 ? 1 : n*fact(n-1)
end

puts "****** Z1 *******"

i=0
puts "Expected  #{i}! == 1 , calculated - #{fact(i)}\r\n\r\n"

i=1
puts "Expected  #{i}! == 1 , calculated - #{fact(i)}\r\n\r\n"

i=3
puts "Expected  #{i}! == 6 , calculated - #{fact(i)}\r\n\r\n"

i=9
puts "Expected  #{i}! == 362880 , calculated - #{fact(i)}\r\n\r\n"
