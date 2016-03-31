require "spec_helper"
require "codility/sorting/triangle"

module Codility
  module Sorting
    RSpec.describe Triangle do
      context "when array has triangular triplet" do
        it "returns 1" do
          a = [10, 2, 5, 1, 8, 20]
          expect(Triangle.solution(a)).to eql(1)
        end
      end

      context "when array doesn't have a triangular triplet" do
        it "returns 0" do
          a = [10, 50, 5, 1]
          expect(Triangle.solution(a)).to eql(0)
        end
      end

      context "for large data set" do
        it "works fast" do
          a = []
          100000.times { a << rand(1000000) }

          time = Benchmark.realtime do
            expect([0, 1]).to include(Triangle.solution(a))
          end

          puts "Benchmark: #{time}"
        end
      end
    end
  end
end
