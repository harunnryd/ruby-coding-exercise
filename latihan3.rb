require 'rspec'

def dynamic_sum(i)
  1.upto(i).sum
end

describe 'Dynamic sum' do
  it 'Outputs a sum of digits, ranging from 1 through the argument value' do
    expect(dynamic_sum(15)).to eq(120)
    expect(dynamic_sum(17)).to eq(153)
    expect(dynamic_sum(10)).to eq(55)
  end
end
