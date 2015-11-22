module OVOV
  module Calculator
    class JumpRope < Base
      POOR_PERFORMANCE = 0

      def calculate
        return 0 if @performance <= POOR_PERFORMANCE

        @points = ((@performance - 27) / 3) * 10
      end

    end
  end
end

