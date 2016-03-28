# CyclicRotation
#
# Rotate an array to the right by a given number of steps.
#
module Codility
  module Arrays
    module CyclicRotation
      def self.solution(a, k)
        a.rotate(-k)
      end
    end
  end
end
