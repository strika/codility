require "spec_helper"
require "codility/counting_elements/max_counters"

module Codility
  module CountingElements
    RSpec.describe MaxCounters do
      it "calculates counters" do
        a = [3, 4, 4, 6, 1, 4, 4]
        expect(MaxCounters.solution(5, a)).to eql([3, 2, 2, 4, 2])
      end

      context "all max counters" do
        it "calculates counters" do
          a = Array.new(100000, 100001)
          expect(MaxCounters.solution(100000, a)).to eql(Array.new(100000, 0))
        end
      end
    end
  end
end
