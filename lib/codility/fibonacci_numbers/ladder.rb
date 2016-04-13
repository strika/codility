# Ladder
#
# Count the number of different ways of climbing to the top of a ladder.
#
# Solution score - https://codility.com/demo/results/training9B5HPS-UCB/.
#
module Codility
  module FibonacciNumbers
    module Ladder
      def self.solution(a, b)
        a.zip(b).map { |x, y| fib(x) % (2 ** y) }
      end

      def self.fib(n)
        FIBONACCI_NUMBERS.drop(2)[n - 1]
      end

      def self.fibonacci_numbers(count)
        a = 0
        b = 1
        fibs = [a, b]

        while fibs.size < count
          n = a + b
          fibs << n
          a = b
          b = n
        end

        fibs
      end

      FIBONACCI_NUMBERS = fibonacci_numbers(30_002)
    end
  end
end
