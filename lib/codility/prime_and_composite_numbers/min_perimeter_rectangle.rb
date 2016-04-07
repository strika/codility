# MinPerimeterRectangle
#
# Find the minimal perimeter of any rectangle whose area equals N.
#
# Solution score - https://codility.com/demo/results/trainingZVPF92-FJH/.
#
module Codility
  module PrimeAndCompositeNumbers
    module MinPerimeterRectangle
      def self.solution(n)
        factors(n).map { |a, b| 2 * (a + b) }.min
      end

      def self.factors(n)
        factors = []
        sqrt_n = Math.sqrt(n)

        (1..(sqrt_n.floor)).each do |potential_factor|
          if n % potential_factor == 0
            factors << [potential_factor, n / potential_factor]
          end
        end

        factors
      end
    end
  end
end
