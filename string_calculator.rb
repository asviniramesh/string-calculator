class StringCalculator
    def self.add(numbers)
      return 0 if numbers == ""
  
      delimiter = /,|\n/
      if numbers.start_with?("//")
        parts = numbers.split("\n", 2)
        delim_part = parts[0][2..-1]
        numbers = parts[1]
        delimiter = Regexp.escape(delim_part)
      end
  
      # Split with both newline and comma if no custom delim
      tokens = if delimiter.is_a?(String)
                 numbers.split(delimiter)
               else
                 numbers.gsub("\n", ",").split(",")
               end
  
      ints = tokens.map(&:to_i)
  
      negatives = ints.select(&:negative?)
      if negatives.any?
        raise "negative numbers not allowed: #{negatives.join(', ')}"
      end
  
      ints.sum
    end
  end
  