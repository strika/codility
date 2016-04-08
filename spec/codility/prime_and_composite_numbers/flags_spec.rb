require "spec_helper"
require "codility/prime_and_composite_numbers/flags"

module Codility
  module PrimeAndCompositeNumbers
    RSpec.describe Flags do
      it "returns the maximum number of flags" do
        a = [1, 5, 3, 4, 3, 4, 1, 2, 3, 4, 6, 2]
        expect(Flags.solution(a)).to eql(3)
      end

      it "returns the maximum number of flags" do
        a = [5]
        expect(Flags.solution(a)).to eql(0)
      end

      context "with large data set" do
        it "works fast" do
          a = []

          400_000.times { a << rand(1_000_000_000) }

          time = Benchmark.realtime do
            expect(Flags.solution(a)).to be_an_instance_of(Fixnum)
          end

          expect(time).to be < 1
        end
      end
    end
  end
end
