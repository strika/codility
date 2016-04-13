require "spec_helper"
require "codility/fibonacci_numbers/fib_frog"

module Codility
  module FibonacciNumbers
    RSpec.describe FibFrog do
      it "returns the minimum number of jumps" do
        a = [0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0]
        expect(FibFrog.solution(a)).to eql(3)
      end

      it "returns the minimum number of jumps" do
        a = [1, 0, 0, 0, 0]
        expect(FibFrog.solution(a)).to eql(2)
      end

      it "returns the minimum number of jumps" do
        expect(FibFrog.solution([1])).to eql(1)
      end

      context "for large data set" do
        it "is fast" do
          a = []

          100_000.times { a << rand(1).round }

          time = Benchmark.realtime do
            expect(FibFrog.solution(a)).to be_an_instance_of(Fixnum)
          end

          expect(time).to be < 1
        end

        it "is fast" do
          a = []

          50_000.times { a.concat([0, 1]) }

          time = Benchmark.realtime do
            expect(FibFrog.solution(a)).to be_an_instance_of(Fixnum)
          end

          expect(time).to be < 1
        end
      end

      describe FibFrog::Frog do
        describe "#allowed_jumps" do
          it "returns fibonacci numbers except 0" do
            river = FibFrog::River.new(Array.new(100, 0))
            frog = FibFrog::Frog.new(river)
            expect(frog.allowed_jumps).to eql([1, 2, 3, 5, 8, 13, 21, 34, 55, 89])
          end
        end
      end
    end
  end
end
