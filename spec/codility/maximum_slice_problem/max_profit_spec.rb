require "spec_helper"
require "codility/maximum_slice_problem/max_profit"

module Codility
  module MaximumSliceProblem
    RSpec.describe MaxProfit do
      it "returns maximum possible profit" do
        a = [23171, 21011, 21123, 21366, 21013, 21367]
        expect(MaxProfit.solution(a)).to eql(356)
      end
    end
  end
end
