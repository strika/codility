require "spec_helper"
require "codility/prefix_sums/min_avg_two_slice"

module Codility
  module PrefixSums
    RSpec.describe MinAvgTwoSlice do
      it "returns the starting position of the slice with the minimum average" do
        a = [4, 2, 2, 5, 1, 5, 8]
        expect(MinAvgTwoSlice.solution(a)).to eql(1)
      end

      it "returns the starting position of the slice with the minimum average" do
        a = [2, 4, 1, 5, 8]
        expect(MinAvgTwoSlice.solution(a)).to eql(0)
      end

      it "returns the starting position of the slice with the minimum average" do
        a = [2, 1, 1]
        expect(MinAvgTwoSlice.solution(a)).to eql(1)
      end
    end
  end
end
