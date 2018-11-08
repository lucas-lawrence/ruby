#write your code here
def echo string
  string
end

def shout string
  string.upcase
end

def repeat string,number=2
  reply = string
  (number-1).times do
    reply = reply + " " + string
  end
  reply
end

def start_of_word string, number
  string[0,number]
end

def first_word string
  (string.split)[0]
end

def titleize string
  array=string.split
  little_words=["and","or","in","at","on","the","over"]
  array.each do |string|
    string.capitalize!
    little_words.each do |word|
      if string.downcase==word
        string.downcase!
      end
    end
    if string==array[0]
      string.capitalize!
    end
  end
  array.join(" ")
end
