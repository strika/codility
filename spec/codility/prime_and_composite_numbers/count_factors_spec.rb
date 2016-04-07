require "spec_helper"
require "codility/prime_and_composite_numbers/count_factors"

module Codility
  module PrimeAndCompositeNumbers
    RSpec.describe CountFactors do
      it "counts factors of the number" do
        expect(CountFactors.solution(24)).to eql(8)
      end

      context "when square root of n is a whole number" do
        it "counts factors of the number" do
          expect(CountFactors.solution(25)).to eql(3)
        end
      end
    end
  end
end
