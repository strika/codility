require "spec_helper"
require "codility/fibonacci_numbers/ladder"

module Codility
  module FibonacciNumbers
    RSpec.describe Ladder do
      it "returns array of necessary steps to climb a ladder" do
        a = [4, 4, 5, 5, 1]
        b = [3, 2, 4, 3, 1]

        expect(Ladder.solution(a, b)).to eql([5, 1, 8, 0, 1])
      end

      context "for large data set" do
        it "is fast" do
          a = []
          b = []

          30_000.times do
            a << rand(30_000)
            b << rand(30)
          end

          a << 30_000
          b << 30

          time = Benchmark.realtime do
            expect(Ladder.solution(a, b)).to be_an_instance_of(Array)
          end

          expect(time).to be < 1
        end
      end

      describe ".fib" do
        it "returns fibonacci number for n" do
          expect(Ladder.fib(1)).to eql(1)
          expect(Ladder.fib(2)).to eql(2)
          expect(Ladder.fib(3)).to eql(3)
          expect(Ladder.fib(4)).to eql(5)
          expect(Ladder.fib(5)).to eql(8)
        end
      end
    end
  end
end
