# Triangle
#
# Determine whether a triangle can be built from a given set of edges.
#
# A zero-indexed array A consisting of N integers is given. A triplet (P, Q, R)
# is triangular if 0 ≤ P < Q < R < N and:
#
# - A[P] + A[Q] > A[R],
# - A[Q] + A[R] > A[P],
# - A[R] + A[P] > A[Q].
#
# Solution score - https://codility.com/demo/results/trainingZM6VR9-RV6/.
#
module Codility
  module Sorting
    module Triangle
      def self.triangle?(cons)
        cons[0] + cons[1] > cons[2] # Enough to check since cons is sorted.
      end

      def self.solution(a)
        numbers = a.select { |n| n >= 0 }.sort

        numbers.each_cons(3) do |cons|
          return 1 if triangle?(cons)
        end

        return 0
      end
    end
  end
end
