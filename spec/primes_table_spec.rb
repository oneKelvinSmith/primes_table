# frozen_string_literal: true

require 'spec_helper'

RSpec.describe PrimesTable do
  it 'has a version number' do
    expect(PrimesTable::VERSION).not_to be nil
  end

  describe '.run' do
    it 'prints the multiplication table for n prime numbers' do
      table = <<~TABLE
        \   2 3
        \ 2 4 6
        \ 3 6 9
        TABLE

      expect { described_class.run(2) }.to output(table).to_stdout
    end

    context 'when no arguments are provided' do
      it 'prints the multiplication table for the first 10 prime numbers' do
        table = <<~TABLE
          \       2   3   5   7  11  13  17  19  23  29
          \   2   4   6  10  14  22  26  34  38  46  58
          \   3   6   9  15  21  33  39  51  57  69  87
          \   5  10  15  25  35  55  65  85  95 115 145
          \   7  14  21  35  49  77  91 119 133 161 203
          \  11  22  33  55  77 121 143 187 209 253 319
          \  13  26  39  65  91 143 169 221 247 299 377
          \  17  34  51  85 119 187 221 289 323 391 493
          \  19  38  57  95 133 209 247 323 361 437 551
          \  23  46  69 115 161 253 299 391 437 529 667
          \  29  58  87 145 203 319 377 493 551 667 841
          TABLE

        expect { described_class.run }.to output(table).to_stdout
      end
    end

    context 'when a bad argument is given' do
      it 'displays a helpul error message' do
        [-42, 'bad', nil].each do |bad_arg|
          expect { described_class.run(bad_arg) }
            .to output("Please provide a positive integer...\n").to_stdout
        end
      end
    end
  end
end
