name=gets.chomp.split
puts name.sort.join(" ")
puts ""
i=0
name2=[]

while name.length>0
  j=0
  while j<name.length
    if name[i]<=name[j]
      j+=1
      if j==name.length
        name2.push name.shift
      else
      end
    else
      j=name.length
      name.push name.shift
    end
  end
end

puts name2.join(" ")