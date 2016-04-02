require "spec_helper"
require "codility/leader/equi_leader"

module Codility
  module Leader
    RSpec.describe EquiLeader do
      it "finds the number of equi leaders" do
        a = [4, 3, 4, 4, 4, 2]
        expect(EquiLeader.slow_solution(a)).to eql(2)
      end

      context "for large data set" do
        it "is fast" do
          a = Array.new(50, 42)
          49.times { a << rand(101) }
          a.shuffle!

          time = Benchmark.realtime do
            1000.times do
              expect(EquiLeader.solution(a)).to eql(EquiLeader.slow_solution(a))
            end
          end

          #expect(time).to be < 1
        end
      end
    end
  end
end
