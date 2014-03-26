require 'spec_helper'
require './square_of_sum2'

  describe Square_of_sums do

    let(:three) { Square_of_sums.new(3) }
    let(:five) { Square_of_sums.new(5) }

    describe '#square_of_sum' do

      context "When n = 3" do

        subject { three }

        it 'should add n numbers then square total' do
          subject.square_of_sum.should eq 36
        end

      end

      context "When n = 5" do

        subject { five }

        it 'should add n numbers then square total' do
          subject.square_of_sum.should eq 225
        end

      end

    end

    describe '#sum_of_square' do

      context 'when n = 3' do

        subject { three }

        it 'should square each number to n then add them' do
          subject.sum_of_square.should eq 14
        end

      end

      context 'when n = 3' do

        subject { five }

        it 'should square each number to n then add them' do
          subject.sum_of_square.should eq 55
        end

      end

    end

    describe '#total' do

      context 'when n = 3' do

        subject { three }

        it 'should return #s_of_square - #s_of_sum' do
          subject.total.should eq 22
        end

      end

      context 'when n = 5' do

        subject { five }

        it 'should return #s_of_square - #s_of_sum' do
          subject.total.should eq 170
        end

      end


    end

  end
