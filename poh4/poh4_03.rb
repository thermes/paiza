#! /usr/bin/env ruby

(t, n) = gets.chomp.split(' ').map(&:to_i)
ms = ARGF.map(&:to_i)

sums = []
(0..ms.size-t).each do |i|
  sums << ms[i..(i+t-1)].sum
end

puts sums.max
