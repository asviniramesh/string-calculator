class StringCalculator
    def self.add(numbers)
      return 0 if numbers == ""
      parts = numbers.split(",")
      parts.map(&:to_i).sum
    end
  end