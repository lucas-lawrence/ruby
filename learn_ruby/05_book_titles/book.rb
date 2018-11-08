class Book

  def title
    array=@title.split
    little_words=["and","or","in","at","on","the","over","of","a","an"]
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
    @title= array.join(" ")
  end

end