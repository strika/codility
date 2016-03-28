require "spec_helper"
require "codility/prefix_sums/count_div"

module Codility
  module PrefixSums
    RSpec.describe CountDiv do
      it "calculates the number of divisables" do
        expect(CountDiv.solution(6, 11, 2)).to eql(3)
        expect(CountDiv.solution(7, 11, 2)).to eql(2)
        expect(CountDiv.solution(0, 10, 5)).to eql(3)
        expect(CountDiv.solution(11, 345, 17)).to eql(20)
      end

      context "for extremely larga data" do
        it "calculates the number of divisables" do
          expect(CountDiv.solution(0, 2000000000, 2)).to eql(1000000001)
        end
      end
    end
  end
end
