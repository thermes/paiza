#! /usr/bin/env ruby

(n, a, b) = gets.chomp.split(' ').map(&:to_i)
(a..b).each do |i|
  puts "%0#{n}d" % i
end
