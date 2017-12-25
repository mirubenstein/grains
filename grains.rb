class Grains
  def self.square(number)
    raise ArgumentError, "Number must be between 1 and 64. #{number} given." unless number.between?(1,64)
    2**(number - 1)
  end

  def self.total
    (1..64).sum { |square_number| square(square_number) }
  end
end

module BookKeeping
  VERSION = 1
end
