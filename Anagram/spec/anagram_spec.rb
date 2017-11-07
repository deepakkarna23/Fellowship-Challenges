require_relative '../lib/anagram.rb'
require 'rspec'

describe Anagram do
  word = "listen"
  list=["enlists", "google", "inlets", "banana"]
  expected_list=["inlets"]

  context 'when a word is given' do
    it 'returns anagram pair' do
      expect(Anagram.new(word, list).find_anagram).to eq(expected_list)
    end
  end
end
