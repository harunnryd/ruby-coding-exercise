require 'rspec'

def count_words(words = '', str = '')
  words.split(/\W/).count(str)
end

describe 'Count words' do
  before do
    @words = "halo nama saya markonah, paijem adalah nama \
    ibu markonah, dan paijo adalah nama bapak markonah :D"
  end

  it 'give result' do
    expect(count_words(@words, "markonah")).to eq(3)
    expect(count_words(@words, "nama")).to eq(3)
  end
end
