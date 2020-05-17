#! /usr/bin/env ruby

(x, y, n) = gets.chomp.split(' ').map(&:to_i)
table = [Array.new(x + 1, 0)]
y.times.each do
  table << gets.chomp.split(' ').map(&:to_i).unshift(0)
end

selected = Array.new(y + 1) { Array.new(x + 1, 0) }
ARGF.each do |line|
  (xs, ys, xe, ye) = line.chomp.chomp.split(' ').map(&:to_i)
  (ys..ye).each do |j|
    (xs..xe).each do |i|
      selected[j][i] = 1
    end
  end
end

puts table.flatten.zip(selected.flatten).map { |a, b| a * b }.sum
