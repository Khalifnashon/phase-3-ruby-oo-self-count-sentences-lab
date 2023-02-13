require 'pry'

class String

  # Using the end_with method to check if a string ends with a given period.
  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    self.split(/[.?!]+/).count
  end
end

# binding.pry