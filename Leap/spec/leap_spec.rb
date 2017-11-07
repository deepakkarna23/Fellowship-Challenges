require_relative '../lib/leap.rb'
require 'rspec'

describe Leap do
  context 'when year is given' do
    it 'returns if the year is leap or not' do
      expect(Leap.new(1996).leap_year).to eq(true)
    end

    it 'returns if the year is leap or not' do
      expect(Leap.new(1997).leap_year).to eq(false)
    end

    it 'returns if the year is leap or not' do
      expect(Leap.new(2000).leap_year).to eq(true)
    end

    it 'returns if the year is leap or not' do
      expect(Leap.new(1900).leap_year).to eq(false)
    end
  end
end
