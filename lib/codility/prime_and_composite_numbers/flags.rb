# Flags
#
# Find the maximum number of flags that can be set on mountain peaks.
#
# Solution score - https://codility.com/demo/results/trainingS4544F-5ME/.
#
module Codility
  module PrimeAndCompositeNumbers
    module Flags
      def self.solution(a)
        peaks = find_peaks(a)
        max_flags = Math.sqrt(a.size).ceil + 1

        max_flags.downto(1).find { |flags_count| can_be_set_on_peaks?(flags_count, peaks) } || 0
      end

      def self.can_be_set_on_peaks?(flags_count, peaks)
        last_flag = peaks.first

        (2..flags_count).each do |flag|
          peaks = peaks.drop_while { |peak| peak < last_flag + flags_count }

          return false if peaks.empty?

          last_flag = peaks.first
        end

        !!last_flag
      end

      def self.find_peaks(a)
        peaks = []

        (1..(a.size - 2)).each do |i|
          peaks << i if a[i - 1] < a[i] && a[i] > a[i + 1]
        end

        peaks
      end
    end
  end
end
