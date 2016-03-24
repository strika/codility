require "spec_helper"
require "codility/lesson_5d"

module Codility
  RSpec.describe Lesson5d do
    it "returns the starting position of the slice with the minimum average" do
      a = [4, 2, 2, 5, 1, 5, 8]
      expect(Lesson5d.solution(a)).to eql(1)
    end
  end
end
