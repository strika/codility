# MissingInteger
#
# Find the minimal positive integer not occurring in a given sequence.
#
module Codility
  module CountingElements
    module MissingInteger
      def self.solution(a)
        largest_possible_positive_integer = a.size + 1
        positive_integers = SortedSet.new(1..largest_possible_positive_integer)

        a.each { |n| positive_integers.delete(n) }

        positive_integers.first
      end
    end
  end
end
