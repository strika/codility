# CommonPrimeDivisors
#
# Check whether two numbers have the same prime divisors.
#
require "prime"

module Codility
  module EuclideanAlgorithm
    module CommonPrimeDivisors
      def self.solution(a, b)
        a.zip(b).select { |x, y| common_prime_divisors?(x, y) }.count
      end

      def self.common_prime_divisors?(x, y)
        prime_divisors(x) == prime_divisors(y)
      end

      def self.prime_divisors(n)
        divisors = Set.new

        Prime.each do |prime|
          return divisors if n == 1

          if n % prime == 0
            divisors.add(prime)
            n /= prime while n % prime == 0
          end
        end
      end
    end
  end
end
