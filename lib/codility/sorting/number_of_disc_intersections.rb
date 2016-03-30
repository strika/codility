# NumberOfDiscIntersections
#
# Compute the number of intersections in a sequence of discs.
#
require "byebug"
module Codility
  module Sorting
    module NumberOfDiscIntersections
      def self.solution(a)
        pairs = a.map.with_index { |x, i| [i - x, i + x] }.sort_by(&:first)
        intersections = 0

        pairs.each_with_index do |pair, i|
          return -1 if intersections > 10000000

          intersections += pairs
            .slice((i + 1)..-1)
            .take_while { |other_pair| other_pair.first <= pair.last }
            .count
        end

        intersections
      end
    end
  end
end
