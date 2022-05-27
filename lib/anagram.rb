class Anagram
  def initialize(word)
    @word = word
  end

  def match(array)
    return_array = []
    
    array.each do |array_word|
      if array_word.chars.sort == @word.chars.sort
        return_array << array_word
      end
    end

    return_array
  end

end

listen = Anagram.new("listen")
listen.match(%w[enlists google inlets banana])
