require "spec_helper"
require "codility/time_complexity/perm_missing_elem"

module Codility
  module TimeComplexity
    RSpec.describe PermMissingElem do
      it "returns the missing element" do
        expect(PermMissingElem.solution([2, 3, 1, 5])).to eql(4)
      end

      context "when the first element is missing" do
        it "returns the missing element" do
          expect(PermMissingElem.solution([2, 3, 4, 5])).to eql(1)
        end
      end

      context "when the last element is missing" do
        it "returns the missing element" do
          expect(PermMissingElem.solution([2, 3, 1, 4])).to eql(5)
        end
      end

      context "when array is empty" do
        it "returns 1" do
          expect(PermMissingElem.solution([])).to eql(1)
        end
      end
    end
  end
end
