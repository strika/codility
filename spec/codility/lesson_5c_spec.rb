require "spec_helper"
require "codility/lesson_5c"
require "benchmark"

module Codility
  RSpec.describe Lesson5c do

    def generate_p_and_q(m, n)
      seq = (1..m).map { |_| [rand(n), rand(n)].sort }
      p = seq.map { |a| a[0] }
      q = seq.map { |a| a[1] }
      [p, q]
    end

    it "calculates impact factors" do
      s = "CAGCCTA"
      p = [2, 5, 0]
      q = [4, 5, 6]

      expect(Lesson5c.solution(s, p, q)).to eql([2, 4, 1])
    end

    context "with short sequence" do
      it "calculates impact factors" do
        s = "AA"
        p = [0]
        q = [0]

        expect(Lesson5c.solution(s, p, q)).to eql([1])
      end
    end

    context "another short sequence" do
      it "calculates impact factor" do
        s = "AGA"
        p = [0]
        q = [1]

        expect(Lesson5c.solution(s, p, q)).to eql(Lesson5c.solution_slow(s, p, q))
      end
    end

    context "random test" do
      it "calculates impact factors" do
        letters = ["A", "C", "G", "T"]
        s = (0..3).map { |_| letters[rand(3)].to_s }.join("")
        p, q = generate_p_and_q(1, 2)

        expect(Lesson5c.solution(s, p, q)).to eql(Lesson5c.solution_slow(s, p, q))
      end
    end

    context "with larga data set" do
      it "calculates impact factors" do
        s = "CAGTC" * 20000
        p, q = generate_p_and_q(50000, 100000)

        time = Benchmark.realtime do
          expect(Lesson5c.solution(s, p, q)).to be_an_instance_of(Array)
        end

        puts "Time: #{time}"
      end
    end
  end
end
