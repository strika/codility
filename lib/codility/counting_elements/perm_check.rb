# PermCheck
#
# Check whether array A is a permutation.
#
module Codility
  module CountingElements
    module PermCheck
      def self.solution(a)
        permutation = Set.new(1..(a.size))

        a.each do |n|
          unless permutation.delete?(n)
            return 0
          end
        end

        permutation.empty? ? 1 : 0
      end
    end
  end
end
