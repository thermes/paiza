#! /usr/bin/env ruby

gets
sum = 0
ARGF.each do |line|
  (t, s, p) = line.chomp.split(' ').map(&:to_i)
  sum += (t - s) * p if t > s
end

puts sum
