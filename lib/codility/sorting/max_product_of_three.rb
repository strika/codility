# MaxProductOfThree
#
# Maximize A[P] * A[Q] * A[R] for any triplet (P, Q, R).
#
# Solution score - https://codility.com/demo/results/trainingR2RZ62-AZE/.
#
module Codility
  module Sorting
    module MaxProductOfThree
      def self.product(collection)
        collection.reduce(&:*)
      end

      def self.solution(a)
        numbers = a.sort

        first_two_and_last = numbers.slice(0..1) << numbers.last
        last_three = numbers.slice(-3..-1)

        [product(first_two_and_last), product(last_three)].max
      end
    end
  end
end
