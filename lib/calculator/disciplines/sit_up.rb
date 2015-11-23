module OVOV
  module Calculator
    class SitUp < Base
      POOR_PERFORMANCE = 10

      def calculate
        return 0 if @performance < POOR_PERFORMANCE

        @points = (@performance - 9) * 10
      end

    end
  end
end
