class StringCalculator
    def self.add(numbers)
      return 0 if numbers == ""
  
      delimiter = /,|\n/  # default delimiters as regex
      # detect custom delimiter syntax
      if numbers.start_with?("//")
        # format: "//<delim>\n<rest>"
        parts = numbers.split("\n", 2)
        delim_part = parts[0][2..-1]   # after //
        rest = parts[1]
        delimiter = Regexp.escape(delim_part)
        numbers = rest
      end
  
      normalized = numbers.gsub(/\n/, ",")
      # If custom delimiter, split by that delimiter instead
      if delimiter.is_a?(String)
        parts = numbers.split(delimiter)
      else
        parts = normalized.split(/,/)
      end
  
      parts.map(&:to_i).sum
    end
  end
  