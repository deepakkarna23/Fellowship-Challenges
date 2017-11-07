class Anagram
  def initialize(words, list)
    @words = words.split('').to_a
    @list = list
  end

  def find_anagram
    @list.map{|a| a if a.split("") - @words == [] && a.size == @words.size }.compact
  end
end
