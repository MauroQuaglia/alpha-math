require_relative '../spec/spec_helper'
require_relative '../lib/partitions'

describe Partitions do
  let(:partitions) { Partitions.new }

  describe '#sum' do

    it '1 + p(1)' do
      expect(partitions.sumfy(1, [[1]])).to eq([[1, 1]])
    end

    it '2 + p(1)' do
      expect(partitions.sumfy(2, [[1]])).to eq([[2, 1]])
    end

    it '3 + p(1)' do
      expect(partitions.sumfy(3, [[1]])).to eq([[3, 1]])
    end

    it '2 + p(2)' do
      expect(partitions.sumfy(2, [[2], [1, 1]])).to eq([[2, 2], [2, 1, 1]])
    end

    it '3 + p(2)' do
      expect(partitions.sumfy(3, [[2], [1, 1]])).to eq([[3, 2], [3, 1, 1]])
    end

    it '2 + p(3)' do
      expect(partitions.sumfy(2, [[3], [2, 1], [1, 1, 1]])).to eq([[2, 2, 1], [2, 1, 1, 1,]])
    end

    it '2 + p(4)' do
      expect(partitions.sumfy(2, [[4], [3, 1], [2, 2], [2, 1, 1], [1, 1, 1, 1]])).to eq([[2, 2, 2], [2, 2, 1, 1], [2, 1, 1, 1, 1]])
    end

  end

  describe 'enums' do

    it 'should retrieve partitions 1' do
      expect(partitions.enumerates(1)).to eq([[1]])
      expect(partitions.enumerates(2)).to eq([[2], [1, 1]])
      expect(partitions.enumerates(3)).to eq([[3], [2, 1], [1, 1, 1]])
      expect(partitions.enumerates(4)).to eq([[4], [3, 1], [2, 2], [2, 1, 1], [1, 1, 1, 1]])
      expect(partitions.enumerates(5)).to eq([[5], [4, 1], [3, 2], [3, 1, 1], [2, 2, 1], [2, 1, 1, 1], [1, 1, 1, 1, 1]])
      expect(partitions.enumerates(6)).to eq([[6], [5, 1], [4, 2], [4, 1, 1], [3, 3], [3, 2, 1], [3, 1, 1, 1], [2, 2, 2], [2, 2, 1, 1], [2, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]])
    end
  end

end