require "spec_helper"
require "codility/maximum_slice_problem/max_slice_sum"

module Codility
  module MaximumSliceProblem
    RSpec.describe MaxSliceSum do
      it "returns maximum sum of any slice" do
        a = [3, 2, -6, 4, 0]
        expect(MaxSliceSum.solution(a)).to eql(5)
      end

      context "for array with one negative number" do
        it "returns the number" do
          a = [-10]
        expect(MaxSliceSum.solution(a)).to eql(-10)
        end
      end
    end
  end
end
