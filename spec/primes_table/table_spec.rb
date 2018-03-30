# frozen_string_literal: true

require 'spec_helper'

RSpec.describe PrimesTable::Table do
  let(:numbers) { [2, 3, 4, 5] }

  subject { described_class.new(numbers) }

  describe '#to_s' do
    it 'outputs a multiplication table for as a string' do
      expect(subject.to_s).to eq <<~TABLE
        \     2  3  4  5
        \  2  4  6  8 10
        \  3  6  9 12 15
        \  4  8 12 16 20
        \  5 10 15 20 25
        TABLE
    end

    context 'when list of numbers is empty' do
      let(:numbers) { [] }

      it 'outputs a multiplication table for as a string' do
        expect(subject.to_s).to eq 'Empty table'
      end
    end
  end
end
