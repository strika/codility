# FrogRiverOne
#
# Find the earliest time when a frog can jump to the other side of a river.
#
module Codility
  module CountingElements
    module FrogRiverOne
      def self.solution(x, a)
        path = Set.new

        a.each_with_index do |position, index|
          path.add(position) if position <= x
          return index if path.size == x
        end

        return -1
      end
    end
  end
end
