# CountSemiprimes
#
# Count the semiprime numbers in the given range [a..b]
#
# Solution score - https://codility.com/demo/results/trainingRJ6NCN-FB2/.
#
module Codility
  module SieveOfEratosthenes
    module CountSemiprimes
      def self.solution(n, p, q)
        semi_primes_count = semi_primes_count(n)

        p.zip(q).map do |a, b|
          semi_primes_count[b] - semi_primes_count[a - 1]
        end
      end

      def self.semi_primes_count(n)
        semi_primes = semi_primes(n)
        count = 0
        semi_primes_count = []

        i = 0
        while prime = semi_primes.shift
          while i < prime
            semi_primes_count << count
            i += 1
          end

          count += 1
        end

        while i <= n
          semi_primes_count << count
          i += 1
        end

        semi_primes_count
      end

      def self.semi_primes(n)
        semi_primes = SortedSet.new

        primes = primes(n)

        (0...(primes.size - 1)).each do |i|
          (i...primes.size).each do |j|
            semi_prime = primes[i] * primes[j]

            break if semi_prime > n

            semi_primes << semi_prime
          end
        end

        semi_primes.to_a
      end

      def self.primes(n)
        primes = Set.new(2..n)

        i = 2
        while i * i < n
          k = i * i

          while k <= n
            primes.delete(k)
            k += i
          end

          i += 1
        end

        primes.to_a
      end
    end
  end
end
