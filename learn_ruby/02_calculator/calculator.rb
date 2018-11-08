#write your code here
def add number1,number2
  number1+number2
end

def subtract number1,number2
  number1-number2
end

def sum array
  total = 0
  array.each do |number|
    total = total + number
  end
  total
end

def multiply array
  product = 1
  array.each do |number|
    product = product*number
  end
  product
end

def power number1, number2
  number1**number2
end

def factorial number
  if number==0
    return 1
  else
    fact=1
    for i in 1..number
      fact=fact*i
    end
  end
end