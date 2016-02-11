require 'pry'

class PatternGenerator
  attr_reader :pattern

  def initialize(pattern)
    @pattern = pattern
  end

  def chars_gen
    ('A'..'Z').to_a.sample
  end

  def num_gen
    (0..9).to_a.sample
  end

  def join_chars_and_nums
    "#{chars_gen}#{num_gen}"
  end

end

p = PatternGenerator.new("xnxxn")
puts p.join_chars_and_nums
