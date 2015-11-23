module OVOV
  module Calculator
    class BallThrow < Base
      POOR_PERFORMANCE = 5

      def calculate
        return 0 if @performance < POOR_PERFORMANCE

        @points = ((@performance - 4.25) / 0.75) * 10
      end

    end
  end
end
