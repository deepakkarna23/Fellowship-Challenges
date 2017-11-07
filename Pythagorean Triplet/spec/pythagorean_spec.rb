require_relative '../lib/pythagorean.rb'
require 'rspec'

describe Pythagorean do
  context 'is not a valid number' do
    it 'should return false on string input' do
        expect(Pythagorean.new("string").find_triplet).to eq(false)
    end
  end

  context 'is a valid number' do
    it 'should return false on number greater than 1000' do
        expect(Pythagorean.new(1001).find_triplet).to eq(false)
    end
  end

end
