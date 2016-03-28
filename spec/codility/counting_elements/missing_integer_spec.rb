require "spec_helper"
require "codility/counting_elements/missing_integer"

module Codility
  module CountingElements
    RSpec.describe MissingInteger do
      it "returns missing integer" do
        expect(MissingInteger.solution([1, 3, 6, 4, 1, 2])).to eql(5)
      end

      context "when 1 is missing" do
        it "returns 1" do
          expect(MissingInteger.solution([2, 3])).to eql(1)
        end
      end

      context "when array has no missing elements" do
        it "returns first larger element" do
          expect(MissingInteger.solution([1, 2, 3])).to eql(4)
        end
      end

      context "when array has 0" do
        it "returns 1" do
          expect(MissingInteger.solution([0])).to eql(1)
        end
      end

      context "when array has negative integers" do
        it "returns 1" do
          expect(MissingInteger.solution([-1, -2, -3])).to eql(1)
        end
      end
    end
  end
end
