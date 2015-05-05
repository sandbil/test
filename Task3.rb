def checkArray(a)
  l=0
  r=a.size-1
  @result = []
  def searchEl(ar,l,r)
    unless l>r
      m=(l+r) / 2
      d = ar[m]-(m+1)
      case d
        when 0
          searchEl(ar, m+1, r)
        when 1
          @result.push ar[m-1] + 1 if ar[m-1] == m
          searchEl(ar, l, m-1)
          searchEl(ar, m+1, r)
        when 2
          @result.push ar[m-1] + 1 if ar[m-1] == m + 1
          @result.push ar[m-1] + 1 if ar[m-1] == m
          @result.push ar[m-1] + 2 if ar[m-1] == m
          searchEl(ar, l, m-1)
      end
    end
  end
  searchEl(a,l,r)
  @result.sort
end


puts "****** Z3 *******"

a =  [1, 2, 4, 5, 7, 8]
puts "Array  #{a},\r\n not exist - [3, 6], calculated #{checkArray(a)}\r\n\r\n"

a = [1,2,3,4,5,7,8,9,10,11,12,13,14,16]
puts "Array  #{a},\r\n not exist - [6, 15], calculated #{checkArray(a)}\r\n\r\n"

a =  [1, 2, 3, 6, 7, 8, 9]
puts "Array  #{a},\r\n not exist - [4, 5], calculated #{checkArray(a)}\r\n\r\n"

a = (1..1000000).to_a
b = []
b.push Random.rand(2...1000000)
b.push Random.rand(2...1000000)
b.each {|el| a.delete el}
puts "Array [1..1000000],\r\n not exist - #{b.sort}, calculated #{checkArray(a)}\r\n\r\n"