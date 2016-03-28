require "spec_helper"
require "codility/arrays/odd_occurrences_in_array"

module Codility
  module Arrays
    RSpec.describe OddOccurrencesInArray do
      context "when array has 3 elements" do
        it "returns the unpaired element" do
          expect(OddOccurrencesInArray.solution([1, 3, 1])).to eql(3)
        end
      end

      context "when the unpaired element is the first" do
        it "returns the unpaired element" do
          expect(OddOccurrencesInArray.solution([3, 1, 1])).to eql(3)
        end
      end

      context "when the unpaired element is the last"
      it "returns the unpaired element" do
        expect(OddOccurrencesInArray.solution([1, 1, 3])).to eql(3)
      end

      context "when array as 3 same elements" do
        it "returns the unpaired element" do
          expect(OddOccurrencesInArray.solution([1, 1, 1])).to eql(1)
        end
      end
    end
  end
end
