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
          a = []
          100000.times { a << rand(1000000) }

          time = Benchmark.realtime do
            puts "NUMBER OF INTERSECTIONS: #{NumberOfDiscIntersections.solution(a)}"
          end

          puts "TIME: #{time}"
        end
      end
    end
  end
end
