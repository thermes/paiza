#! /usr/bin/env ruby

(t, n) = gets.chomp.split(' ').map(&:to_i)
ms = []
sums = []
results = []
ARGF.each do |line|
  m = line.to_i
  ms << m
  sums << m + sums[-1].to_i
  results << sums[-1] - sums[-t - 1].to_i
end

puts results.max
