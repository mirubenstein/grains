class Grains
  MIN_SQUARE = 1
  MAX_SQUARE = 64

  def self.square(number)
    unless number.between?(MIN_SQUARE, MAX_SQUARE)
      raise ArgumentError, "Number must be between 1 and 64. #{number} given."
    end
    2**(number - 1)
  end

  def self.total
    1.upto(64).sum(&method(:square))
  end
end

module BookKeeping
  VERSION = 1
end
