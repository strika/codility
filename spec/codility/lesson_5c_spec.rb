require "spec_helper"
require "codility/lesson_5c"
require "benchmark"

module Codility
  RSpec.describe Lesson5c do
    it "calculates impact factors" do
      s = "CAGCCTA"
      p = [2, 5, 0]
      q = [4, 5, 6]

      expect(Lesson5c.solution(s, p, q)).to eql([2, 4, 1])
    end

    context "with larga data set" do
      it "calculates impact factors" do
        s = "CAGTC" * 20000
        seq = (1..50000).map { |_| [rand(100000), rand(100000)].sort }
        p = seq.map { |a| a[0] }
        q = seq.map { |a| a[1] }

        time = Benchmark.realtime do
          expect(Lesson5c.solution(s, p, q)).to be_an_instance_of(Array)
        end

        puts "Time: #{time}"
      end
    end
  end
end
