# frozen_string_literal: true

require 'spec_helper'

RSpec.describe PrimesTable::Primes do
  describe '::FIRST_TEN' do
    it 'is a constant that returns the first 10 prime numbers' do
      expect(described_class::FIRST_TEN)
        .to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
    end
  end

  describe '.take' do
    it 'returns an empty array when argument is zero' do
      expect(described_class.take(0)).to be_empty
    end

    it 'raises an error when argument is negative' do
      expect { described_class.take(-1) }.to raise_error do |error|
        expect(error).to be_a ArgumentError
        expect(error.message).to eq 'negative integer'
      end
    end

    context 'when n is less than 10' do
      let(:primes) { [2, 3, 5, 7, 11] }

      it 'returns the first n prime numbers' do
        expect(described_class.take(5)).to eq primes
      end
    end

    context 'when n is greater than 10' do
      let(:primes) do
        [2, 3, 5, 7, 11,
         13, 17, 19, 23, 29,
         31, 37, 41, 43, 47,
         53, 59, 61, 67, 71,
         73, 79, 83, 89, 97,
         101, 103, 107, 109, 113,
         127, 131, 137, 139, 149,
         151, 157, 163, 167, 173,
         179, 181]
      end

      it 'returns the first n prime numbers' do
        expect(described_class.take(42)).to eq primes
      end
    end
  end
end
