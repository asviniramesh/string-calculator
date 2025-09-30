require_relative "string_calculator"
RSpec.describe StringCalculator do
    describe ".add" do
      it "returns 0 for empty string" do
        expect(StringCalculator.add("")).to eq(0)
      end
      it "returns the number itself for a single number" do
        expect(StringCalculator.add("7")).to eq(7)
      end
      it "adds more than two numbers" do
        expect(StringCalculator.add("1,2,3,4")).to eq(10)
      end
      it "handles newlines between numbers" do
        expect(StringCalculator.add("1\n2,3")).to eq(6)
      end
    end
  end