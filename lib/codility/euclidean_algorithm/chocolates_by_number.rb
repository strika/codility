# ChocolatesByNumbers
#
# There are N chocolates in a circle. Count the number of chocolates you will eat.
#
# Solution score - https://codility.com/demo/results/trainingBNAHYJ-ZRK/.
#
module Codility
  module EuclideanAlgorithm
    module ChocolatesByNumber
      def self.solution(n, m)
        n / n.gcd(m)
      end
    end
  end
end
