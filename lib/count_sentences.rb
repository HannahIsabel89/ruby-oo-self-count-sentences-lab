require 'pry'

class String

  #Define this instance method to return true if the string you are calling it on ends in a period and false if it does not.
  def sentence?
    self.end_with?(".")
  end

  #This instance method should use the self keyword to refer to the string on which it is being called. This method should return true if a string ends with a question mark and false if it does not.
  def question?
    self.end_with?("?")
  end

  #This instance method should use the self keyword to refer to the string on which it is being called. This method should return true if a string ends with an exclamation mark and false if it does not.
  def exclamation?
    self.end_with?("!")
  end

  #What we'd like to be able to do is call a count_sentences method on a string, and get back a, well, count of sentences in that string.
  def count_sentences
    self.split(/\.|\?|!/).reject(&:empty?).length
  end
end