# Distinct
#
# Compute number of distinct values in an array.
#
# Solution score - https://codility.com/demo/results/trainingC5P9SF-BWT/.
#
module Codility
  module Sorting
    module Distinct
      def self.solution(a)
        a.uniq.size
      end
    end
  end
end
