require "spec_helper"
require "codility/prefix_sums/passing_cars"

module Codility
  module PrefixSums
    RSpec.describe PassingCars do
      it "calculates pairs of passing cars" do
        expect(PassingCars.solution([0, 1, 0, 1, 1])).to eql(5)
      end

      context "max number of cars" do
        it "calculates number of pairs of passing cars" do
          a = (1..100000).map { |_| rand.round }
          expect(PassingCars.solution(a)).to eql(-1)
        end
      end
    end
  end
end
