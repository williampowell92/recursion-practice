require 'recursion'

describe 'Factorial' do
  it 'calculates for 0 correctly' do
    expect(0.factorial).to eq 1
  end
  it 'calculates for 1 to 10 correctly' do
    test_values = (1..10).to_a
    results = [
      0,
      1,
      2,
      6,
      24,
      120,
      720,
      5040,
      40320,
      362880,
      3628800
      ]

    test_values.each { |value|
      expect(value.factorial).to eq results[value]
    }
  end
end