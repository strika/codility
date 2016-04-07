# CountFactors
#
# Count factors of given number n.
#
# Solution score - https://codility.com/demo/results/trainingXNSS44-7KT/.
#
module Codility
  module PrimeAndCompositeNumbers
    module CountFactors
      def self.solution(n)
        count = 0
        sqrt_n = Math.sqrt(n)

        (1..(sqrt_n.floor)).each do |potential_factor|
          if n % potential_factor == 0
            count += potential_factor == sqrt_n ? 1 : 2
          end
        end

        count
      end
    end
  end
end
