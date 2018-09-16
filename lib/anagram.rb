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
      list_word = l.split(//).sort
      if list_word == sort_word
        l
      end
    end
  
  end
  
end