class Integer
  def factorial
    self < 2 ? 1 : self * (self - 1).factorial
  end
end

def bunny_ears(n)
  n == 0 ? 0 : 2 + bunny_ears(n - 1)
end

def fibonacci(n)
  n < 2 ? n : fibonacci(n - 2) + fibonacci(n - 1)
end

def bunny_ears_2(bunnies)
  return 0 if bunnies == 0
  bunnies.even? ? 3 + bunny_ears_2(bunnies - 1) : 2 + bunny_ears_2(bunnies - 1)
end

def triangle(rows)
  rows == 0 ? 0 : rows + triangle(rows - 1)
end

def sum_digits(n)
  n < 10 ? n : n % 10 + sum_digits(n / 10)
end

def count_seven(n)
  return n == 7 ? 1 : 0 if n < 10
  (n % 10 == 7 ? 1 : 0) + count_seven(n / 10)
end
