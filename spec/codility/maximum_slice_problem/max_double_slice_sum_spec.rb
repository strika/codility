require "spec_helper"
require "codility/maximum_slice_problem/max_double_slice_sum"

module Codility
  module MaximumSliceProblem
    RSpec.describe MaxDoubleSliceSum do
      it "finds the maximum sum of double slice" do
        a = [3, 2, 6, -1, 4, 5, -1, 2]
        expect(MaxDoubleSliceSum.solution(a)).to eql(17)
      end
    end
  end
end
