# FibFrog
#
# Count the minimum number of jumps required for a frog to get to the other
# side of a river.
#
module Codility
  module FibonacciNumbers
    module FibFrog
      def self.solution(a)
        n = a.size
        fibs = fibonacci_numbers(n + 1).drop(1)
        positions = [{:location => n, :steps => 0}]

        while positions.any?
          position = positions.shift

          fibs.each do |f|
            new_location = position[:location] - f

            if new_location == -1
              return position[:steps] + 1
            elsif new_location >= 0 && a[new_location] == 1
              a[new_location] = 0
              positions << {:location => new_location, :steps => position[:steps] + 1}
            end
          end
        end

        -1
      end

      def self.fibonacci_numbers(limit)
        a = 0
        b = 1
        fibs = [a, b]

        while (n = a + b) <= limit
          fibs << n
          a = b
          b = n
        end

        fibs
      end
    end
  end
end
