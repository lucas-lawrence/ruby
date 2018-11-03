puts "what you want?"
answer=gets.chomp
puts "WHADDAYA MEAN \"#{answer}\"?!? YOU\'RE FIRED"

textwidth=50
puts "Table of Content".center textwidth
puts "Chapter 1: Numbers".ljust(textwidth/2)+"Page 1".rjust(textwidth/2)
puts "Chapter 2: Letters".ljust(textwidth/2) + "Page 72".rjust(textwidth/2)

a=-4.abs
puts a
a=5**2
puts a

puts rand
puts rand
puts rand
puts rand(1)
puts rand(1)
puts rand(100)
puts rand(10000)
puts rand(5)
puts rand(6)
puts rand(100.0)
puts ""
srand 30
puts rand(100)
puts rand(100)
puts rand(100)
puts rand(100)
puts ""
srand 30
puts rand(100)
puts rand(100)
puts rand(100)
puts rand(100)

#Deaf Grandma
puts ""
listen=gets.chomp
count=0

while count<2
	if listen!="BYE"
		if listen!=listen.upcase
			puts "HUH?! SPEAK UP, SONNY!"
		else
			puts "NO, NOT SINCE #{1930+rand(21)}!"
		end
		count=0
	else
		count+=1
	end
	listen=gets.chomp
end

=begin
we can use loop do ... end
for a in 1..300
next if ...
break if ...
=end

#Leap Year
puts ""
puts "Enter a starting year"
start=gets.chomp.to_i
puts "Enter a ending year"
endyear=gets.chomp.to_i

while start<=endyear
	if (start%4==0  and (start%100!=0 or start%400==0))
		puts "#{start} is a leap year"
	end
	start+=4-start%4
end