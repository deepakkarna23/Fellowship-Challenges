class Wordcount
  def initialize(words)
    @words = words
  end

  def word_count
    return '' if @words.empty?
    c = Hash.new(0)
    @words.split(" ").each{|word| c[word] += 1}
    c
  end
end
