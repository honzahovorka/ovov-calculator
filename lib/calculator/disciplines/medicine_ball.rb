module OVOV
  module Calculator
    class MedicineBall < Base
      POOR_PERFORMANCE = 3

      def calculate
        return 0 if @performance < POOR_PERFORMANCE

        @points = ((@performance - 2.85 ) / 0.15) * 10
      end

    end
  end
end

