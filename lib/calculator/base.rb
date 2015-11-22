module OVOV
  module Calculator
    class Base
      attr_reader :points
      attr_accessor :performance

      def initialize(performance = 0)
        @points = 0
        @performance = performance
      end

      def calculate
        raise CalculatorError.new('Should be implemented in subclass')
      end
    end
  end

  class CalculatorError < StandardError; end
end
