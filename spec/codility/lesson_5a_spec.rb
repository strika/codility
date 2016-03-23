require "spec_helper"
require "codility/lesson_5a"

module Codility
  RSpec.describe Lesson5a do
    it "calculates pairs of passing cars" do
      expect(Lesson5a.solution([0, 1, 0, 1, 1])).to eql(5)
    end

    context "max number of cars" do
      it "calculates number of pairs of passing cars" do
        a = (1..100000).map { |_| rand.round }
        expect(Lesson5a.solution(a)).to eql(-1)
      end
    end
  end
end
