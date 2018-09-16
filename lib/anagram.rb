require 'pry'

class Anagram
  
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(list)
    sort_word = @word.split(//).sort
    anagram_list = []
    
    list.collect do |l|
      if l.split(//).sort == sort_word
        anagram_list << l
      end
    end
      anagram_list
    
  end
  
end