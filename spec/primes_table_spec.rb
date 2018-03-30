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
  end
end
