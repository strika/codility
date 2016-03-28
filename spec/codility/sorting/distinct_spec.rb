require "spec_helper"
require "codility/sorting/distinct"
require "benchmark"

module Codility
  module Sorting
    RSpec.describe Distinct do
      it "returns number of distinct elements" do
        expect(Distinct.solution([2, 1, 1, 2, 3, 1])).to eql(3)
      end

      context "for large data set" do
        it "returns number of distinct elements" do
          a = []
          100000.times { a << rand(1000000) }
          distinct_count = a.uniq.size

          time = Benchmark.realtime do
            expect(Distinct.solution(a)).to eql(distinct_count)
          end

          puts "Benchmark: #{time}"
        end
      end
    end
  end
end
