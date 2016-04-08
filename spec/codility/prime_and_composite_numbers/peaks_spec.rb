require "spec_helper"
require "codility/prime_and_composite_numbers/peaks"

module Codility
  module PrimeAndCompositeNumbers
    RSpec.describe Peaks do
      it "returns the number of blocks" do
        a = [1, 2, 3, 4, 3, 4, 1, 2, 3, 4, 6, 2]
        expect(Peaks.solution(a)).to eql(3)
      end

      it "returns the number of blocks" do
        a = [19, 29, 29, 18, 32, 33, 23, 14, 37, 29]
        expect(Peaks.solution(a)).to eql(1)
      end

      context "when the array has only one item" do
        it "returns 0" do
          a = [5]
          expect(Peaks.solution(a)).to eql(0)
        end
      end

      describe ".peaks" do
        it "returns indexes of peaks" do
          a = [1, 2, 3, 4, 3, 4, 1, 2, 3, 4, 6, 2]
          expect(Peaks.find_peaks(a)).to eql([3, 5, 10])
        end
      end
    end
  end
end
