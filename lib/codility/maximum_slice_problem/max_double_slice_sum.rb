# MaxDoubleSliceSum
#
# Find the maximal sum of any double slice.
#
# Solution score - https://codility.com/demo/results/trainingHVRXDM-MM8/.
#
require "byebug"
module Codility
  module MaximumSliceProblem
    module MaxDoubleSliceSum
      def self.solution(a)
        a = a[1...-1]
        max_normal = max_endings(a[0...-1])
        max_reverse = max_endings(a[1..-1].reverse).reverse

        max_normal.zip(max_reverse).map { |a, b| a + b }.max || 0
      end

      def self.max_endings(sequence)
        max_endings = [0]

        sequence.each do |n|
          max_ending = [0, max_endings.last + n].max
          max_endings << max_ending
        end

        max_endings
      end
    end
  end
end
