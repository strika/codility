# MaxSliceSum
#
# Find a maximum sum of a compact subsequence of array elements.
#
# Solution score - https://codility.com/demo/results/trainingKXRCPH-T6G/.
#
module Codility
  module MaximumSliceProblem
    module MaxSliceSum
      def self.solution(a)
        max_end = max_sum = a.first

        a.drop(1).each do |n|
          max_end = [n, max_end + n].max
          max_sum = [max_sum, max_end].max
        end

        max_sum
      end
    end
  end
end
