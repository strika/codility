require "spec_helper"
require "codility/sorting/number_of_disc_intersections"
require "benchmark"

module Codility
  module Sorting
    RSpec.describe NumberOfDiscIntersections do
      it "returns the number of intersecting discs" do
        a = [1, 5, 2, 1, 4, 0]
        expect(NumberOfDiscIntersections.solution(a)).to eql(11)
      end

      context "for large data set" do
        it "works" do
          solution = nil
          a = []
          100000.times { a << rand(1000000) }

          time = Benchmark.realtime do
            solution = NumberOfDiscIntersections.solution(a)
          end

          expect(solution).to eql(-1)
          expect(time).to be < 1
        end
      end
    end
  end
end
