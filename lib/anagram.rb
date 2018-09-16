require 'pry'

class Anagram
  
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(list)
    sort_word = @word.split(//).sort
    anagram_list = []
    
    new_list = list.collect do |l|
      list_word = l.split(//).sort
      if list_word == sort_word
        anagram_list << l
      end
      anagram_list
    end
    
  end
  
end