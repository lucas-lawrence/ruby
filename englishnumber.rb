def hundred number
  unit = ["zero","one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tenth = ["","ten ", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teen = ["","eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

  if number%100<11 or number%100>20 and number%10!=0 or number==0
    num = unit[number%10]
  else
    num = teen[number%10]
  end

  if number%100>=20
    num = num +" "+ tenth[number/10%10]
    num = num.split.reverse.join("-")
  end

  if number>=100
    num = num + " hundred " + unit[number/100%10]
  end

  num
end

def englishnumber number
  if number<0
    return "You have typed a negative number"
  end

  num=hundred number

  if number<100
    return num
  end

  num=num.split.insert(-3,'and').join(" ")

  bignum=["thousand","million","billion","trillion","quadrillion","quintillion","sextillion","septillion","octillion","nonillion","decillion","undecillion","duodecillion","tredecillion"]

  bignum.each do |big|
    if number>=1000
      number/=1000
      num = num + " #{big} "+ (hundred number)
    end
  end

  num.split.reverse.join(" ")
end

loop do
  print "Please enter a number to spell : "
  number=gets.to_i
  puts englishnumber number
  break if number<0
end