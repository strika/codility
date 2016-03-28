# FrogJmp
#
# Count minimal number of jumps from position X to Y.
#
module Codility
  module TimeComplexity
    module FrogJmp
      def self.solution(x, y, d)
        ((y - x).to_f / d).ceil
      end
    end
  end
end
