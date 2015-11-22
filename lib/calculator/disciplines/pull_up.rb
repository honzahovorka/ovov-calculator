module OVOV
  module Calculator
    class PullUp < Base
      POOR_PERFORMANCE = 5

      def calculate
        return 0 if @performance < POOR_PERFORMANCE

        @points = ((@performance - 4 ) / 1 ) * 10
      end

    end
  end
end
