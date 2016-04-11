# CountNonDivisible
#
# Calculate the number of elements of an array that are not divisors of each element.
#
# Solution score - https://codility.com/demo/results/trainingT3KFFT-QZS/.
#
module Codility
  module SieveOfEratosthenes
    module CountNonDivisible
      def self.solution(a)
        divisors = find_divisors(a)

        a.map { |n| a.size - divisors[n] }
      end

      def self.find_divisors(a)
        sieve_limit = a.max
        divisors = Array.new(sieve_limit + 1, 0)

        a.group_by(&:itself).each do |n, group|
          sieve(n, group.count, divisors, sieve_limit)
        end

        divisors
      end

      def self.sieve(n, count, divisors, sieve_limit)
        return if n == 0

        i = n

        while i <= sieve_limit
          divisors[i] += count
          i += n
        end
      end
    end
  end
end
