# MaxDoubleSliceSum
#
# Find the maximal sum of any double slice.
#
module Codility
  module MaximumSliceProblem
    module MaxDoubleSliceSum
      def self.solution(a)
        max_sum = a[2]

        (0...(a.size - 2)).each do |x|
          (x...(a.size - 1)).each do |y|
            (y...(a.size)).each do |z|
              max_sum = [max_sum, double_slice_sum(a, x, y, z)].max
            end
          end
        end

        max_sum
      end

      def self.double_slice_sum(a, x, y, z)
        a[(x + 1)...y].reduce(0, &:+) + a[(y + 1)...z].reduce(0, &:+)
      end
    end
  end
end
