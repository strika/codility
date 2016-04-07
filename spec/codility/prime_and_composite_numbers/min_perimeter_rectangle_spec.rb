require "spec_helper"
require "codility/prime_and_composite_numbers/min_perimeter_rectangle"

module Codility
  module PrimeAndCompositeNumbers
    RSpec.describe MinPerimeterRectangle do
      it "returns min perimeter for the rectangle of the given area" do
        expect(MinPerimeterRectangle.solution(30)).to eql(22)
      end
    end
  end
end
