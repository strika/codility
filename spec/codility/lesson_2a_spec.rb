require "spec_helper"
require "codility/lesson_2a"

module Codility
  RSpec.describe Lesson2a do
    context "when step is one" do
      it "rotates the array" do
        expect(Lesson2a.solution([3, 8, 9, 7, 6], 1)).to eql([6, 3, 8, 9, 7])
      end
    end

    context "when step is larger than 1" do
      it "rotates the array" do
        expect(Lesson2a.solution([3, 8, 9, 7, 6], 3)).to eql([9, 7, 6, 3, 8])
      end
    end

    context "when array is empty" do
      it "returns the array" do
        expect(Lesson2a.solution([], 1)).to eql([])
      end
    end

    context "when step is larger than the number of elements of the array" do
      it "rotates the array" do
        expect(Lesson2a.solution([1, 2, 3], 4)).to eql([3, 1, 2])
      end
    end

    context "when step is 0" do
      it "doesn't rotate the array" do
        expect(Lesson2a.solution([1, 2, 3], 0)).to eql([1, 2, 3])
      end
    end
  end
end
