require "spec_helper"
require "codility/stacks_and_queues/fish"
require "benchmark"

module Codility
  module StacksAndQueues
    RSpec.describe Fish do
      it "returns the number of fish that stays alive" do
        a = [4, 3, 2, 1, 5]
        b = [0, 1, 0, 0, 0]
        expect(Fish.solution(a, b)).to eql(2)
      end

      context "for large data set" do
        it "works" do
          a = []
          b = []

          100_000.times do
            a << rand(1_000_000_000)
            b << rand.round
          end

          time = Benchmark.realtime do
            expect(Fish.solution(a, b)).to be_an_instance_of(Fixnum)
          end

          expect(time).to be < 1
        end
      end
    end
  end
end
