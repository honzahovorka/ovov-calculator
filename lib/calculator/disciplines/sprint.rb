module OVOV
  module Calculator
    class Sprint < Base
      POOR_PERFORMANCE       = 14.2
      IMPOSSIBLE_PERFORMANCE = 2

      def calculate
        return 0 if @performance > POOR_PERFORMANCE || @performance < IMPOSSIBLE_PERFORMANCE

        if @performance > 10.99
          @points = ((14.3 - @performance) / 0.1) * 10
        else
          @points = ((12.65 - @performance) / 0.05) * 10
        end

        @points
      end

    end
  end
end
