module OVOV
  module Calculator
    class TripleJump < Base
      POOR_PERFORMANCE = 2.2

      def calculate
        return 0 if @performance < POOR_PERFORMANCE

        @points = ((@performance - 2.135 ) / 0.065) * 10
      end

    end
  end
end
