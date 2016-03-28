# MinAvgTwoSlice
#
# Find the minimal average of any slice containing at least two elements.
#
# The solution is based on the fact that the slice with the minimum average
# must have 2 or 3 elements.
#
# Solution score - https://codility.com/demo/results/training7W29Y9-E8R/.
#
module Codility
  module PrefixSums
    module MinAvgTwoSlice
      def self.solution(a)
        max_index = a.size - 1
        min_average = (a[0] + a[1]) / 2.0
        min_average_index = 0

        (0..max_index).each do |i|
          sum = a[i]
          j_max = [max_index, i + 2].min

          ((i + 1)..j_max).each do |j|
            sum += a[j]
            average = sum.to_f / (j - i + 1)

            if average < min_average
              min_average = average
              min_average_index = i
            end
          end
        end

        min_average_index
      end
    end
  end
end
