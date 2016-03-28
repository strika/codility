# OddOccurrencesInArray
#
# Find value that occurs in odd number of elements.
#
module Codility
  module Arrays
    module OddOccurrencesInArray
      def self.solution(a)
        uniques = Set.new

        a.each do |n|
          unless uniques.delete?(n)
            uniques.add(n)
          end
        end

        uniques.first
      end
    end
  end
end
