module OVOV
  module Calculator
    class LongJump < Base
      POOR_PERFORMANCE = 1

      def calculate
        return 0 if @performance < POOR_PERFORMANCE

        @points = ((@performance - 0.945 ) / 0.055) * 10
      end

    end
  end
end
