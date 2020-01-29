require 'pry'

class String

  def sentence?
    return self[-1] == '.'
  end

  def question?
    return self[-1] == '?'
  end

  def exclamation?
    return self[-1] == '!'
  end

  def count_sentences
  	delimiters = ['.', '?', "!"]
  	temp = self.split(Regexp.union(delimiters))
  	temp.reject! { |c| c.empty? }
	return temp.length
  end
end