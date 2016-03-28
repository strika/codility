require "spec_helper"
require "codility/time_complexity/frog_jmp"

module Codility
  module TimeComplexity
    RSpec.describe FrogJmp do
      it "calculates the number of jumps" do
        expect(FrogJmp.solution(10, 85, 30)).to eql(3)
      end

      context "when x > d" do
        it "returns 0" do
          expect(FrogJmp.solution(10, 10, 1)).to eql(0)
        end
      end
    end
  end
end
