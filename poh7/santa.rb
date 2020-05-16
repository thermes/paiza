#! /usr/bin/env ruby

require 'set'

(x, y, z, n) = gets.chomp.split(' ').map(&:to_i)

xy_poss = [[x], [y]]

ARGF.each do |line|
  (d, a) = line.chomp.split(' ').map(&:to_i)
  xy_poss[d] << a
end

xy_widths = xy_poss.map(&:sort).map do |poss|
  s = Set.new
  poss.inject(0) { |last, pos| s << pos - last; pos }
  s
end

puts xy_widths.map(&:min).inject(:*) * z
