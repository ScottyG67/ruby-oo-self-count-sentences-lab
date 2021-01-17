require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split do
      binding.pry
      select do |string| 
        binding.pry 
        string.sentence? or string.question? or string.exclamation?
      end
    end.length

  end


end