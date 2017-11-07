require_relative '../lib/change.rb'
require 'rspec'

describe Change do
  it 'returns negative for negative change' do
    expect(Change.new(-5).change).to eq(false)
  end

  it "returns [1] for 1" do
    expect(Change.new(1).change).to eq [1]
  end

  it "returns [1, 1, 1, 1] for 4" do
    expect(Change.new(4).change).to eq [1,1,1,1]
  end

  it "returns [5, 1] for 6" do
    expect(Change.new(6).change).to eq [5,1]
  end

  it "returns [25, 10, 10, 1, 1, 1] for 48" do
    expect(Change.new(48).change).to eq [25,10,10,1,1,1]
  end

end
