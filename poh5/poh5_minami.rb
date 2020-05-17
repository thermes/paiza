#! /usr/bin/env ruby

(x, y) = gets.chomp.split(' ').map(&:to_i)
before = []
ARGF.each do |line|
  before << line.chomp.split(' ').map(&:to_i)
end

after = []
before.transpose.map { |a| a.filter { |state| state == 1 } }.map { |a| a.size }.each do |num|
  after << ('0' * (y - num) + '1' * num).chars
end

after.transpose.each do |a|
  puts a.join(' ')
end
