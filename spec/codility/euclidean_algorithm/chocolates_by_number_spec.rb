require "spec_helper"
require "codility/euclidean_algorithm/chocolates_by_number"

module Codility
  module EuclideanAlgorithm
    RSpec.describe ChocolatesByNumber do
      it "returns the number of chocolates that will be eaten" do
        expect(ChocolatesByNumber.solution(10, 4)).to eql(5)
      end
    end
  end
end
