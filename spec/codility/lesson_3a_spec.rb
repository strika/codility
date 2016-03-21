require "spec_helper"
require "codility/lesson_3a"

module Codility
  RSpec.describe Lesson3a do
    it "calculates the number of jumps" do
      expect(Lesson3a.solution(10, 85, 30)).to eql(3)
    end

    context "when x > d" do
      it "returns 0" do
        expect(Lesson3a.solution(10, 10, 1)).to eql(0)
      end
    end
  end
end
