require "spec_helper"
require "codility/sorting/max_product_of_three"

module Codility
  module Sorting
    RSpec.describe MaxProductOfThree do
      it "finds the maximal product of any triplet" do
        a = [-3, 1, 2, -2, 5, 6]
        expect(MaxProductOfThree.solution(a)).to eql(60)
      end

      context "when maximal product of any triplet has negative numbers" do
        it "works" do
          a = [-35, 1, 2, -2, 5, 6]
          expect(MaxProductOfThree.solution(a)).to eql(420)
        end
      end

      context "when array has only 2 negative numbers" do
        it "works" do
          a = [-10, -5, 1, 2]
          expect(MaxProductOfThree.solution(a)).to eql(100)
        end
      end

      context "when numbers are only negative" do
        it "works" do
          a = [-1, -2, -3, -4, -5, -6]
          expect(MaxProductOfThree.solution(a)).to eql(-6)
        end
      end
    end
  end
end
