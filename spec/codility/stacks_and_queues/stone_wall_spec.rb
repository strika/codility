require "spec_helper"
require "codility/stacks_and_queues/stone_wall"

module Codility
  module StacksAndQueues
    RSpec.describe StoneWall do
      it "calculates the number of stone blocks" do
        h = [8, 8, 5, 7, 9, 8, 7, 4, 8]
        expect(StoneWall.solution(h)).to eql(7)
      end

      context "with large data set" do
        it "works fast" do
          h = []
          100_000.times { h << rand(1_000_000_000) }

          time = Benchmark.realtime do
            StoneWall.solution(h)
          end

          expect(time).to be < 1
        end
      end
    end

    module StoneWall
      RSpec.describe Wall do
        describe "#add_block" do
          before do
            @wall = Wall.new
          end

          context "when wall is empty" do
            it "adds block to the wall" do
              @wall.add(7)
              expect(@wall.blocks).to include(7)
            end

            it "makes the last added block active" do
              @wall.add(7)
              expect(@wall.active_blocks).to include(7)
            end
          end

          context "when the current size is the same as the new block" do
            it "does nothing" do
              @wall.add(5)
              @wall.add(5)

              expect(@wall.blocks).to match_array([5])
              expect(@wall.active_blocks).to match_array([5])
            end
          end

          context "when the current size is lower than the new block" do
            it "adds 'diff' block" do
              @wall.add(5)
              @wall.add(7)

              expect(@wall.blocks).to include(5, 2)
            end

            it "makes the 'diff' block active" do
              @wall.add(5)
              @wall.add(7)

              expect(@wall.active_blocks).to match_array([5, 2])
            end
          end

          context "when the current size is higher that the new block" do
            it "adds the new block" do
              @wall.add(5)
              @wall.add(3)

              expect(@wall.blocks).to include(5, 3)
            end

            it "makes only the new block active" do
              @wall.add(5)
              @wall.add(3)

              expect(@wall.active_blocks).to match_array([3])
            end

            context "when one of the previous active blocks is lower or equal to the new block" do
              it "trims the active blocks and then adds the diff block" do
                @wall.add(2)
                @wall.add(5)
                @wall.add(3)

                expect(@wall.blocks).to match_array([2, 3, 1])
                expect(@wall.active_blocks).to match_array([2, 1])
              end
            end
          end
        end
      end
    end
  end
end
