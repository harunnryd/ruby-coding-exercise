require 'rspec'
require 'bigdecimal'

def hash_query(hash = {}, key)
  hash.fetch(key)
end

describe 'A better way to hash query' do
 before do
   @fruit = {name: "apple", price: BigDecimal("10_000")}
 end

 it 'give value' do
   expect(hash_query(@fruit, :name)).to eq("apple")
   expect(hash_query(@fruit, :price).to_f).to eq(10000.0)
 end


 it 'give error' do
   expect { hash_query(@fruit, :old) }.to raise_error(KeyError)
 end
end
