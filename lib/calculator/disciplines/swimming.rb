module OVOV
  module Calculator
    class Swimming < Base
      POOR_PERFORMANCE = 25

      def calculate
        return 0 if @performance < POOR_PERFORMANCE

        @points = ((@performance - 23.5) / 1.5) * 10
      end

    end
  end
end
