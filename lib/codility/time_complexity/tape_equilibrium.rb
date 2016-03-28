# TapeEquilibrium
#
# Minimize the value |(A[0] + ... + A[P-1]) - (A[P] + ... + A[N-1])|.
#
module Codility
  module TimeComplexity
    module TapeEquilibrium
      def self.solution(a)
        rest = a.drop(1)
        rest_but_last = rest.take(rest.size - 1)
        sum_1 = a.first
        sum_2 = rest.reduce(&:+)
        min_difference = (sum_1 - sum_2).abs

        rest_but_last.each do |n|
          sum_1 += n
          sum_2 -= n
          diff = (sum_1 - sum_2).abs
          min_difference = diff if diff < min_difference
        end

        min_difference
      end
    end
  end
end
