require 'minitest/autorun'
require_relative 'calculator'

class TestCalculator < Minitest::Test

  describe Calculator do
    before do
      @calculator = Calculator.new
    end

    describe "when given two integers as arguments" do
      it "returns an integer" do
        assert @calculator.is_a? Calculator
      end
    end

    describe "when given two random numbers to add" do
      it "returns their sum" do
        a = rand(100)
        b = rand(100)
        assert_equal a + b, @calculator.add(a,b)
      end
    end

    describe "when given two random numbers to subtract" do
      it "returns their difference" do
        a = rand(100)
        b = rand(100)
        assert_equal a - b, @calculator.subtract(a,b)
      end
    end

    describe "when given two random numbers to multiply" do
      it "returns their product" do
        a = rand(100)
        b = rand(100)
        assert_equal a * b, @calculator.multiply(a,b)  
      end
    end
    
    describe "when given two random numbers to divide" do
      it "returns their quotient" do
        a = rand(100)
        b = rand(100)
        assert_in_delta a / b, @calculator.divide(a,b)
      end
    end    
  end
end