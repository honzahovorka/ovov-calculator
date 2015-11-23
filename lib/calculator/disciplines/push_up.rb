module OVOV
  module Calculator
    class PushUp < Base
      POOR_PERFORMANCE = 5

      def calculate
        return 0 if @performance < POOR_PERFORMANCE

        @points = ((@performance - 4.3) / 0.7) * 10
      end

    end
  end
end
