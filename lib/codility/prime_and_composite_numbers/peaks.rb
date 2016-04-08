# Peaks
#
# Divide an array into the maximum number of same-sized blocks, each of which
# should contain an index P such that A[P - 1] < A[P] > A[P + 1].
#
# Solution score - https://codility.com/demo/results/training5AEASR-32R/.
#
require "set"

module Codility
  module PrimeAndCompositeNumbers
    module Peaks
      def self.solution(a)
        peaks = find_peaks(a)
        factors = factor(a.size)
        possible_solutions = factors.reverse.drop_while { |n| n > peaks.size }

        possible_solutions.find { |n| has_peaks_in_every_block?(n, a.size, peaks) } || 0
      end

      def self.has_peaks_in_every_block?(n, size, peaks)
        block = 0
        block_size = size / n

        while block < size
          return false if peaks.first.nil? || peaks.first >= block + block_size
          peaks = peaks.drop_while { |peak| peak < block + block_size }
          block += block_size
        end

        true
      end

      def self.find_peaks(a)
        peaks = []

        (1..(a.size - 2)).each do |i|
          if a[i - 1] < a[i] && a[i] > a[i + 1]
            peaks << i
          end
        end

        peaks
      end

      def self.factor(n)
        factors = SortedSet.new
        sqrt_n = Math.sqrt(n)

        (1..(sqrt_n.floor)).each do |potential_factor|
          if n % potential_factor == 0
            factors << potential_factor
            factors << n / potential_factor
          end
        end

        factors.to_a
      end
    end
  end
end
