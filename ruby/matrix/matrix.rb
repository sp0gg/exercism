# frozen_string_literal: true

# Write your code for the 'Matrix' exercise in this file. Make the tests in
# `matrix_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/matrix` directory.

class Matrix
  attr_reader :matrix

  def initialize(str)
    @matrix = []
    rows = str.split("\n")

    rows.each do |row|
      matrix << row.split(' ').map(&:to_i)
    end
  end

  def rows
    matrix
  end

  def columns
    cols = []
    rows_dup = rows.dup
    num_items = rows_dup[0].size - 1

    0.upto(num_items) do |idx|
      cols << []
      rows_dup.each do |row|
        cols[idx] << row.slice!(0)
      end
    end

    cols
  end
end
