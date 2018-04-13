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

describe 'Count 7s' do
  it 'counts the number of 7s in a number' do
    numbers = {
    7 => 1,
    0 => 0,
    7177 => 3,
    1164 => 0,
    1257 => 1
    }
    numbers.each do |number, seven_count|
      expect(count_seven(number)).to eq seven_count
    end
  end
end

describe 'Count 8s' do
  it 'counts the number of 8s in a number (double 8 counts for double)' do
    numbers = {
    8 => 1,
    0 => 0,
    88 => 3,
    818 => 2,
    8818 => 4
    }
    numbers.each do |number, eight_count|
      expect(count_eight(number)).to eq eight_count
    end
  end
end

describe 'Power n' do
  it 'calculates indices' do
    numbers = {
      [3, 0] => 1,
      [3, 1] => 3,
      [3, 2] => 9,
      [3, 3] => 27
      }
    numbers.each do |input, output|
      expect(power_n(input[0], input[1])).to eq output
    end
  end
end

describe 'Count x' do
  it 'counts number of x\'s' do
    strings = {
    "x" => 1,
    "y" => 0,
    "xxhixx" => 4,
    "xhixhix" => 3,
    "hi" => 0
    }
    strings.each do |string, x_count|
      expect(count_x(string)).to eq x_count
    end
  end
end

describe 'Count hi' do
  it 'counts number of hi\'s' do
    strings = {
    "hi" => 1,
    "hy" => 0,
    "y" => 0,
    "xxhixx" => 1,
    "xhixhix" => 2
    }
    strings.each do |string, hi_count|
      expect(count_hi(string)).to eq hi_count
    end
  end
end

describe 'Change xy' do
  it 'switches x\'s for y\'s' do
    strings = {
    "x" => "y",
    "y" => "y",
    "codex" => "codey",
    "xxhixx" => "yyhiyy",
    "xhixhix" => "yhiyhiy"
    }
    strings.each do |string, switched|
      expect(changexy(string)).to eq switched
    end
  end
end

describe 'change PI' do
  it 'changes "pi" to 3.14' do
    expect(change_pi("pi")).to eq "3.14"
  end

  single_characters = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f"
    ]
  single_characters.each do |character|
    it 'returns a 1 character string unchanged' do
      expect(change_pi(character)).to eq character
    end
  end

  it 'changes "pi" at the start of a string to "3.14"' do
    expect(change_pi("pixx")).to eq "3.14xx"
  end

  it 'changes "pi" in the middle of a string to "3.14"' do
    expect(change_pi("xxpixx")).to eq "xx3.14xx"
  end

  it 'changes "pi" at the end of a string to "3.14"' do
    expect(change_pi("xxxxpi")).to eq "xxxx3.14"
  end

  it 'changes multiple "pi"s spread in a string to "3.14"' do
    expect(change_pi("xxpixxpixx")).to eq "xx3.14xx3.14xx"
  end

  it 'changes multiple "pi"s together in a string to "3.14"' do
    expect(change_pi("pipipi")).to eq "3.143.143.14"
  end
end
