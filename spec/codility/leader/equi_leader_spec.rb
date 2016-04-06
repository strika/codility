require "spec_helper"
require "codility/leader/equi_leader"

module Codility
  module Leader
    RSpec.describe EquiLeader do
      it "finds the number of equi leaders" do
        a = [4, 3, 4, 4, 4, 2]
        expect(EquiLeader.slow_solution(a)).to eql(2)
      end

      context "edge case" do
        it "finds the number of equi leaders" do
          a = [42, 42, 39, 42]

          expect(EquiLeader.solution(a)).to eql(EquiLeader.slow_solution(a))
        end
      end

      context "for large data set" do
        it "is fast" do
          a = Array.new(50_000, 42)
          49_000.times { a << rand(1_000_000_000) }
          a.shuffle!

          time = Benchmark.realtime do
            expect(EquiLeader.solution(a)).to be_an_instance_of(Fixnum)
          end

          expect(time).to be < 1
        end
      end
    end
  end
end
