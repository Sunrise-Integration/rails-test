require 'rspec'

# A standard rails method is `array.each()`.  Write a method that operates in a similar manner,
# but that takes two arrays as an input and alternates between inputs.  As an example,
# `alternating_each([1, 2, 3], [:a, :b, :c]) { |v| puts v }` would output 1, a, 2, b, 3, c in order.

def alternating_each(arry1, arry2)
end

describe '#alternating_each' do
  it 'alternates arrays' do
    vals = []
    arry1 = [1, 2, 3]
    arry2 = [:a, :b, :c]
    alternating_each(arry1, arry2) { |v| vals << v }
    expect(vals).to eq [1, :a, 2, :b, 3, :c]
  end
  it 'operates on provided arrays' do
    vals = []
    arry1 = [1, 2, 3]
    arry2 = ['a', 'b', 'c']
    alternating_each(arry1, arry2) { |v| vals << (v * 2) }
    expect(vals).to eq [2, 'aa', 4, 'bb', 6, 'cc']
  end
  it 'handles uneven arrays' do
    vals = []
    arry1 = ['a']
    arry2 = [1, 2]
    alternating_each(arry1, arry2) { |v| vals << v }
    expect(vals).to eq['a', '1', 2]
  end
  # Extend tests to cover additional necessary behaviours.
end

# Bonus: adapt the basic method to conform to map standards