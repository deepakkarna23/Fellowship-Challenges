require_relative '../lib/wordcount.rb'
require 'rspec'

describe Wordcount do
  context 'when phrase is empty' do
    it 'returns empty string' do
      expect(Wordcount.new('').word_count).to eq('')
    end
  end

  string = "olly olly in come free"
  expected_hash = { 'olly' => 2, 'in' => 1, 'come' => 1, 'free' => 1  }

  context 'when phrase is not empty' do
    it 'returns the count as hash ' do
      expect(Wordcount.new(string).word_count).to eq(expected_hash)
    end
  end

end
