require "spec_helper"
require "codility/lesson_3c"

module Codility
  RSpec.describe Lesson3c do
    it "returns the missing element" do
      expect(Lesson3c.solution([2, 3, 1, 5])).to eql(4)
    end

    context "when the first element is missing" do
      it "returns the missing element" do
        expect(Lesson3c.solution([2, 3, 4, 5])).to eql(1)
      end
    end

    context "when the last element is missing" do
      it "returns the missing element" do
        expect(Lesson3c.solution([2, 3, 1, 4])).to eql(5)
      end
    end

    context "when array is empty" do
      it "returns 1" do
        expect(Lesson3c.solution([])).to eql(1)
      end
    end
  end
end
