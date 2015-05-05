def checkBrackets(str)

 brackets = str.scan(/[\(\)]+/).join

 while nil != brackets.gsub!(/\(\)/,"")
   #p brackets
 end
 if (brackets.size > 0) then
   return false
 else
   return true
 end
end

puts "****** Z2 *******"

str = "((()( ) ) () )"
puts "The validation string '#{str}' expected  true , calculated - #{checkBrackets(str)}\r\n\r\n"

str = "((()())"
puts "The validation string '#{str}' expected  false , calculated - #{checkBrackets(str)}\r\n\r\n"
str = "()))(("
puts "The validation string '#{str}' expected  false , calculated - #{checkBrackets(str)}\r\n\r\n"