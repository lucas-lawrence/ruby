#write your code here
class String
  def translate
    vowel=["a","e","i","o","u"]
    for i in 0..self.length
      if self[0,2]=="qu"
        return self[2,self.length-2] + self[0,2] + "ay"
      end
    end
    for i in 0..self.length
      next if self[i,2]=="qu" or self[i-1,2]=="qu"
      if vowel.include? self[i,1]
        return self[i,self.length-i] + self[0,i] + "ay"
      end
    end
  end
end

def translate string
  array=string.split
  array.map! do |word|
    word.translate
  end
  return string = array.join(" ")
end
