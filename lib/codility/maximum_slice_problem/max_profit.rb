# MaxProfit
#
# Given a log of stock prices compute the maximum possible earning.
#
# Solution score - https://codility.com/demo/results/trainingH9P753-E5H/.
#
module Codility
  module MaximumSliceProblem
    module MaxProfit
      def self.solution(a)
        min_buying_price = a.first
        max_profit = 0

        a.each do |n|
          min_buying_price = [min_buying_price, n].min
          max_profit = [max_profit, n - min_buying_price].max
        end

        max_profit
      end
    end
  end
end
