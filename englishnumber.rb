def englishnumber number
  unit = ["zero","one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tenth = ["","ten ", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teen = ["","eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

  num=""

  if number<0
    return "You have typed a negative number"
  end
  
  if number<11 or number>20 and number%10!=0 or number==0
    num = unit[number%10]
  else
    num = teen[number%10]
  end

  if number>=20 and number<100
    num = num +" "+ tenth[number/10%10]
  end

  num.split.reverse.join(" ")
end

loop do
  print "Please enter a number to spell : "
  number=gets.to_i
  puts englishnumber number
  break if number<0
end