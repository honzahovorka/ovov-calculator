module OVOV
  module Calculator
    class Dribbling < Base
      POOR_PERFORMANCE = 120

      def calculate
        return 0 if @performance < POOR_PERFORMANCE

        @points = ((@performance - 117.6) / 2.4) * 10
      end

    end
  end
end
