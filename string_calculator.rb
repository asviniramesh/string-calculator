class StringCalculator
    def self.add(numbers)
      return 0 if numbers == ""
      # replace newline with comma, then split
      normalized = numbers.gsub("\n", ",")
      parts = normalized.split(",")
      parts.map(&:to_i).sum
    end
  end