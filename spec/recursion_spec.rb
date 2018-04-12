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

describe 'Bunny ears' do
  it 'calculates total bunny ears' do
      expect(bunny_ears(0)).to eq 0
      (1..10).each do |bunnies|
        expect(bunny_ears(bunnies)).to eq 2 * bunnies
      end
  end
end

describe 'Fibonacci' do
  it 'calculates fibonacci numbers' do
    fibonaccis = [
    0,
    1,
    1,
    2,
    3,
    5,
    8,
    13
    ]
    fibonaccis.each_with_index do |number, i|
      expect(fibonacci(i)).to eq number
    end
  end
end

describe 'Bunny ears 2' do
  it 'calculates mutant bunny ears' do
    bunny_ears_2 = [
    0,
    2,
    5,
    7,
    10,
    12,
    15,
    17
    ]
    bunny_ears_2.each_with_index do |ears, bunnies|
      expect(bunny_ears_2(bunnies)).to eq ears
    end
  end
end

describe 'Triangle' do
  it 'calculates total triangle blocks' do
    triangle_blocks = [
    0,
    1,
    3,
    6,
    10,
    15,
    21,
    28
    ]
    triangle_blocks.each_with_index do |blocks, rows|
      expect(triangle(rows)).to eq blocks
    end
  end
end

describe 'Sum digits' do
  it 'sums the digits of an integer' do
    sum_digits = {
    9 => 9,
    126 => 9,
    49 => 13,
    12 => 3
    }
    sum_digits.each do |integer, sum_of_digits|
      expect(sum_digits(integer)).to eq sum_of_digits
    end
  end
end
