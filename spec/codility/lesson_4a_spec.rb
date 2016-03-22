require "spec_helper"
require "codility/lesson_4a"

module Codility
  RSpec.describe Lesson4a do
    it "returns second when frog can jump to the position" do
      a = [1, 3, 1, 4, 2, 3, 5, 4]
      expect(Lesson4a.solution(5, a)).to eql(6)
    end

    context "when frog can't reach the other end" do
      it "returns -1" do
        a = [1, 3, 1, 4, 3, 5, 4]
        expect(Lesson4a.solution(5, a)).to eql(-1)
      end
    end

    context "when frog is at the position at second 0" do
      it "returns 0" do
        a = [1, 3, 1, 4, 3, 5, 4]
        expect(Lesson4a.solution(1, a)).to eql(0)
      end
    end
  end
end
