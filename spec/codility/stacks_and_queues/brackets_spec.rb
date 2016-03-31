require "spec_helper"
require "codility/stacks_and_queues/brackets"

module Codility
  module StacksAndQueues
    RSpec.describe Brackets do
      context "when string is properly nested" do
        it "returns 1" do
          s = "{[()()]}"
          expect(Brackets.solution(s)).to eql(1)
        end
      end

      context "when string is not properly nested" do
        it "returns 0" do
          s = "([)()]"
          expect(Brackets.solution(s)).to eql(0)
        end
      end

      context "when last closing paren is missing" do
        it "returns 0" do
          s = "{[()()]"
          expect(Brackets.solution(s)).to eql(0)
        end
      end
    end
  end
end
