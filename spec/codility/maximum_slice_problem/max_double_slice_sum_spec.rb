require "spec_helper"
require "codility/maximum_slice_problem/max_double_slice_sum"

module Codility
  module MaximumSliceProblem
    RSpec.describe MaxDoubleSliceSum do
      it "finds the maximum sum of double slice" do
        a = [3, 2, 6, -1, 4, 5, -1, 2]
        expect(MaxDoubleSliceSum.solution(a)).to eql(17)
      end

      it "finds the maximum sum of double slice" do
        a = [5, 5, 5]
        expect(MaxDoubleSliceSum.solution(a)).to eql(0)
      end

      it "finds the maximum sum of double slice" do
        a = [5, 17, 0, 3]
        expect(MaxDoubleSliceSum.solution(a)).to eql(17)
      end

      context "for larger test case" do
        it "is fast" do
          a = []
          100_000.times { a << rand(10_000) }

          time = Benchmark.realtime do
            expect(MaxDoubleSliceSum.solution(a)).to be_an_instance_of(Fixnum)
          end

          expect(time).to be < 1
        end
      end
    end
  end
end
