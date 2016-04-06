require "spec_helper"
require "codility/leader/dominator"

module Codility
  module Leader
    RSpec.describe Dominator do
      it "returns an index of the leader" do
         a = [3, 4, 3, 2, 3, -1, 3, 3]
         expect(Dominator.solution(a)).to eql(0)
      end
    end
  end
end
