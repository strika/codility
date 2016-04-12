# CommonPrimeDivisors
#
# Check whether two numbers have the same prime divisors.
#
# Solution score - https://codility.com/demo/results/trainingUS8KMQ-FM9/.
#
module Codility
  module EuclideanAlgorithm
    module CommonPrimeDivisors
      def self.solution(a, b)
        a.zip(b).select { |x, y| common_prime_divisors?(x, y) }.count
      end

      def self.common_prime_divisors?(x, y)
        gcd = x.gcd(y)

        no_primes_besides_gcd?(x, gcd) && no_primes_besides_gcd?(y, gcd)
      end

      def self.no_primes_besides_gcd?(n, g)
        while n != 1
          n = n / g
          g = n.gcd(g)

          return false if g == 1 && n != 1
        end

        true
      end
    end
  end
end
