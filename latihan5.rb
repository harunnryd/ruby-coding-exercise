require 'rspec'

def is_value_exists_in_nested_hashes?(hashes = {}, val)
  hashes.each do |h|
    return true if h.has_value? val
  end
  return false
end

describe 'Check value if exists in set of nested hashes' do
  before do
    @peoples = [
      {
        name: "paijo",
        age: 30
      },
      {
        name: "tukimin",
        age: 24
      },
      {
        name: "markonah",
        age: 20
      },
      {
        name: "suminah",
        age: 15
      }
    ]
  end

  it 'give true if exists' do
    expect(is_value_exists_in_nested_hashes?(@peoples, "paijo")).to eq(true)
  end

  it 'give false if not exists' do
    expect(is_value_exists_in_nested_hashes?(@peoples, "harun")).to eq(false)
  end
end
