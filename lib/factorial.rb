class Integer
  def factorial
    self < 2 ? 1 : self * (self - 1).factorial
  end
end
