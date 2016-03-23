require "spec_helper"
require "codility/lesson_5b"

module Codility
  RSpec.describe Lesson5b do
    it "calculates the number of divisables" do
      expect(Lesson5b.solution(6, 11, 2)).to eql(3)
      expect(Lesson5b.solution(7, 11, 2)).to eql(2)
      expect(Lesson5b.solution(0, 10, 5)).to eql(3)
      expect(Lesson5b.solution(11, 345, 17)).to eql(20)
    end

    context "for extremely larga data" do
      it "calculates the number of divisables" do
        expect(Lesson5b.solution(0, 2000000000, 2)).to eql(1000000001)
      end
    end
  end
end
