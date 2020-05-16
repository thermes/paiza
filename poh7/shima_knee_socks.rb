#! /usr/bin/env ruby

n = gets.chomp.to_i
m = gets.chomp.to_i

puts ('R' * n + 'W' * n).each_char.cycle.first(m).join
