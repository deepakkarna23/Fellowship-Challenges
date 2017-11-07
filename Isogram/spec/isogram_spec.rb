require_relative '../lib/isogram.rb'
require 'rspec'

describe Isogram do
  context 'when a word is given' do
    it 'returns not isogram' do
      expect(Isogram.new("apple").is_isogram).to eq('not isogram')
    end

    it 'returns isogram' do
      expect(Isogram.new("lumberjack").is_isogram).to eq('isogram')
    end
  end
end
