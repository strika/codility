# CountDiv
#
# Compute number of integers divisible by k in range [a..b].
#
module Codility
  module PrefixSums
    module CountDiv
      def self.solution(a, b, k)
        first_divider = a % k == 0 ? 1 : 0
        b / k - a / k + first_divider
      end
    end
  end
end
