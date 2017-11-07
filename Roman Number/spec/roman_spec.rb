require_relative '../lib/roman.rb'
require 'rspec'

describe Roman do
  context 'input is not a number' do
    it 'should return false on wrong input' do
      expect(Roman.new('alphabets').to_roman).to eq(false)
    end
  end

  context 'input is a number' do
    it 'should return false on negative numbers' do
      expect(Roman.new(-24).to_roman).to eq(false)
    end

    it 'should return true on valid numbers' do
      expect(Roman.new(34).to_roman).to eq(true)
    end
  end
end
