require "spec_helper"
require "codility/counting_elements/perm_check"

module Codility
  module CountingElements
    RSpec.describe PermCheck do
      context "when array is a permutation" do
        it "returns 1" do
          expect(PermCheck.solution([4, 1, 3, 2])).to eql(1)
        end
      end

      context "when array is not a permutation" do
        it "returns 0" do
          expect(PermCheck.solution([4, 1, 3])).to eql(0)
        end
      end

      context "when an element is repeated multiple times" do
        it "returns 0" do
          expect(PermCheck.solution([4, 1, 3, 3, 2])).to eql(0)
        end
      end

      context "when array has one element" do
        context "when the element is 1" do
          it "returns 1" do
            expect(PermCheck.solution([1])).to eql(1)
          end
        end

        context "when the element is not 1" do
          it "returns 0" do
            expect(PermCheck.solution([5])).to eql(0)
          end
        end
      end
    end
  end
end
