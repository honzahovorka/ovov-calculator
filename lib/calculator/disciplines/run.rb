module OVOV
  module Calculator
    class Run < Base
      POOR_PERFORMANCE       = 441
      IMPOSSIBLE_PERFORMANCE = 61
      TIME_REGEX             = /\A(?!00:00)[0-5]?[0-9]:[0-5][0-9]\Z/

      def performance=(value)
        super(convert_time_to_seconds(value))
      end

      def calculate
        return 0 if @performance >= POOR_PERFORMANCE || @performance < IMPOSSIBLE_PERFORMANCE

        @points = ((442.5 - @performance) / 2.5) * 10
      end

      private

      def convert_time_to_seconds(performance)
        return performance unless performance =~ TIME_REGEX

        60 * performance.split(':').first.to_i + performance.split(':').last.to_i
      end

    end
  end
end
