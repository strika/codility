require "spec_helper"
require "codility/lesson_1"

module Codility
  RSpec.describe Lesson1 do
    context "when 1 is at the start and end" do
      it "returns binary gap" do
        expect(Lesson1.solution(9)).to eql(2)
      end
    end

    context "when there are more than one sequence of zeros" do
      it "returns binary gap" do
        expect(Lesson1.solution(529)).to eql(4)
      end
    end

    context "when 0 is at the end" do
      it "returns binary gap with 1 on both ends" do
        expect(Lesson1.solution(20)).to eql(1)
      end
    end

    context "when there are more than 0 zero at the end" do
      it "returns binary gap with 1 on both ends" do
        expect(Lesson1.solution(288)).to eql(2)
      end
    end

    context "when there are no gaps" do
      it "returns 0" do
        expect(Lesson1.solution(15)).to eql(0)
      end
    end

    context "when 0" do
      it "returns 0" do
        expect(Lesson1.solution(0)).to eql(0)
      end
    end
  end
end
